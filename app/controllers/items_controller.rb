class ItemsController < ApplicationController
  
  def create
    @user = current_user
    @item = @user.items.build(params.require(:item).permit(:name))
    if @item.save
      flash[:notice] = "Item saved"
    else
      flash[:error] = "Item not saved"
    end
    redirect_to user_path(@user)
  end
end

