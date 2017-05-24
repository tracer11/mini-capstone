class CartedProductsController < ApplicationController
  def create
    cart = CartedProduct.new(
                      user_id: current_user.id,
                      item_id: params[:item_id],
                      quantity: params[:quantity],
                      status: "carted")
    cart.save
    redirect_to'/checkout'

  end

  def index
    @carted_products = CartedProduct.where(status: "carted", user_id: current_user.id)
  end
end
