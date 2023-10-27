class ItemsController < ApplicationController
  

  def index
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
    @items = Item.new(category_params)
    if @category.save
    redirect_to root_path
   else
     render :new, statues: :unprocessable_entity
   end
 end

 private

 def category_params
   params.require(:category).permit(:title,:text,:genre_id)

   def item_params
    params.require(:item).permit(:content, :image).merge(user_id: current_user.id)
  end

 end
end