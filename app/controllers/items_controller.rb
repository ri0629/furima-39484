class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @items = Item.all
    @items = Category.order("created_at DESC")
    @items = Information.order("created_at DESC")
    @items = Charge.order("created_at DESC")
    @items = Prefecture.order("created_at DESC")
    @items = Delivery.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(items_params)
     if @item.save
      redirect_to root_path
     else
      render :new, status: :unprocessable_entity
     end
    
    end




 private

 #def category_params
   #params.require(:category).permit(:title,:text,:genre_id)

   def items_params
    params.require(:item).permit(:item, :price, :description, :category_id, :information_id, :charge_id, :prefecture_id, :estimated_day_id).merge(user_id: current_user.id)
  end

  

 end
