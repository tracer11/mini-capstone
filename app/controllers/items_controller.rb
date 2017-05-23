 class ItemsController < ApplicationController

  def index
    @items = Item.all 
    sort_controller = params[:sort]
    sort_order = params[:sort_order]
    discount = params[:discount]
    search_term = params[:search_term]
    category = params[:category]

    if category
      @items = Category.find_by(name: category).items
    end
    if search_term
      @items = Item.where(
                          "name iLIKE ? OR description iLIKE ?",
                           "%#{search_term}%",
                           "%#{search_term}%"
                           )
    end

    if discount
      @items = @items.where("price < ?", discount)
    end

    if sort_controller && sort_order
      @items = @items.order(sort_controller => sort_order)
    elsif sort_controller 
      @items = @items.order(sort_controller)
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
  end

  def create
    item = Item.new(
                    name: params[:name],
                    price: params[:price],
                    description: params[:description],
                    supplier_id: params[:supplier] [:supplier_id]
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
                          description: params[:description],
                          supplier_id: params[:supplier_id]
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

  def random
    item = Item.all.sample
    redirect_to "/items/#{item.id}"
  end
end
