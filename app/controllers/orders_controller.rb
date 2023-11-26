class OrdersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_item, only: [:create, :index]
    before_action :non_purchased_item, only: [:index, :create]

   def index
    gon.public_key = ENV["PAYJP_PUBLIC_KEY"]
    @order_form = OrderForm.new
   end

   def create
    
    @order_form = OrderForm.new(order_params)
    if @order_form.valid?
      pay_item
      @order_form.save
      return redirect_to root_path
    else
      gon.public_key = ENV["PAYJP_PUBLIC_KEY"]
      render :index, status: :unprocessable_entity
    end

    
   end

  private

  def order_params
   params.require(:order_form).permit(:postcode, :city, :block, :building, :phone_number, :prefecture_id).merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token])
 end
 
  def set_item
   @item = Item.find(params[:item_id])
   #@item = Item.find(params[:id])
 end

def pay_item
  Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
  Payjp::Charge.create(
    amount: @item.price,
    card: order_params[:token],
    currency: 'jpy'
  )
end
def non_purchased_item
  
  @item = Item.find(params[:item_id])
  redirect_to root_path if current_user.id == @item.user_id || @item.order.present?
end

 



end
