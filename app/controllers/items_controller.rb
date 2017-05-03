class ItemsController < ApplicationController
  def items
    @cars = Item.all
    render 'all_items.html.erb'
  end
end
