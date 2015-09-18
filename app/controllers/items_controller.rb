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

  def destroy
    @item = current_user.items.find(params[:id])
    if @item.destroy
      flash[:notice] = "Item complete"
    else
      flash[:notice] = "Item not complete"
    end
    redirect_to user_path(current_user)
  end
end

