class OrdersController < ApplicationController
before_action :authenticate_user!


   def index
    @address = address.new
   end

   def create
    @address = address.new(address_params)

    binding.pry
   end

  private

  def address_params
   params.require(:address).permit(postcode, :prefecture_id, :city, :block, :building, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token])



end
