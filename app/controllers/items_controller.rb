class ItemsController < ApplicationController
  #before_action :authenticate_user!

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
    @item = Item.new(item_params)
     if @item.save
      redirect_to user_session_path
     else
      render :new, status: :unprocessable_entity
     end
    
    end


 private

 #def category_params
   #params.require(:category).permit(:title,:text,:genre_id)

   def item_params
    params.require(:item).permit(:item, :price, :description)
  end

  

 end
