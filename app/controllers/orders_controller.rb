class OrdersController < ApplicationController
  def new
  end

  
  

  def create
    @item = Item.find(params[:item_id])
    order = Order.new(
                      quantity: params[:quantity],
                      user_id: current_user.id,
                      item_id: params[:item_id],
                      subtotal: @item.price,
                      tax: @item.tax,
                      total: @item.total
                      )
    order.save
    redirect_to"/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
   @item = Item.find(@order.item_id)
  end


end
