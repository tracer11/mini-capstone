class ItemsController < ApplicationController
  def cars
    @cars = Item.all
    render 'all_items.html.erb'
  end

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
  end


end
