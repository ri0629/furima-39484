class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :ensure_current_user, only[:edit, :update]

  def index
     @items = Item.includes(:user).order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
   @item = Item.find(params[:id])
  end

  def update
    if @item.update(items_params)
      redirect_to item_path
    else
      render :edit
    end
  end

  private
def contributor_confirmation
    redirect_to root_path unless @item.user == current_user
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
    params.require(:item).permit(:item, :image, :price, :description, :category_id, :information_id, :charge_id, :prefecture_id, :estimated_day_id).merge(user_id: current_user.id)
  end

  

 end
