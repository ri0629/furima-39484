class OrdersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_item, only: [:edit, :update,:show, :destroy]
    before_action :non_purchased_item, only: [:index, :create]

   def index
    @address = Address.new
    #@item = Item.find(params[:item_id])
   end

   def create
    @item = Item.find(params[:item_id])
    
    @address = Address.new(order_params)
    if @address.valid?
      
      pay_item
      @address.save
      redirect_to item_orders_path, status: :unprocessable_entity
    else
      render :index
    end

    
   end

  private

  def order_params
   @item = Item.find(params[:item_id])
   params.require(:address).permit(:postcode, :prefecture, :city, :block, :building, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token])
 end
 
  def set_item
   @item = Item.find(params[:item_id])
   #@item = Item.find(params[:id])
 end

def pay_item
  Payjp.api_key = sk_test_cf295c0c9bc9e7d969379514
  Payjp::Charge.create(
    amount: order_params[:price],
    card: order_params[:token],
    currency:'jpy'
  )
end
def non_purchased_item
  
  @item = Item.find(params[:item_id])
  #redirect_to root_path if current_user.id == @item.user_id || @item.order.present?
end

 



end
