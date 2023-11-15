class OrdersController < ApplicationController
#before_action :authenticate_user!


   def index
    @address = Address.new
   end

   def create
    @address = Address.new(address_params)

    
   end

  private

  def address_params
   params.require(:address).permit(:postcode, :prefecture_id, :city, :block, :building, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token])



end
end
