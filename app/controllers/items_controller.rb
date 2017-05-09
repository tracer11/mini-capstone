 class ItemsController < ApplicationController

  def index
    @items = Item.all 
  end

  def show
    item_id = params[:id]
    @item = Item.find_by(id: item_id)
  end

  def new
  end

  def create
    item = Item.new(
                    name: params[:name],
                    price: params[:price],
                    description: params[:description]
                    )
    item.save
    flash[:success] = "Listing Created"
    redirect_to "/items/#{item.id}"
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.assign_attributes(
                          name: params[:name],
                          price: params[:price],
                          description: params[:description]
                          )
    item.save
    flash[:success] = "Listing Updated"
    redirect_to "/items/#{item.id}"
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    flash[:warning] = "Listing Deleted"
    redirect_to "/"
  end

end
