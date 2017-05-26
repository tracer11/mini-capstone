class CartedProductsController < ApplicationController
  before_action :authenticate_user!

  def create
    carted_product = CartedProduct.new(
                      user_id: current_user.id,
                      item_id: params[:item_id],
                      quantity: params[:quantity],
                      status: "carted")
    carted_product.save
    redirect_to'/carted_products'

  end

  def index
    if current_user && current_user.cart.any?
      @carted_products = current_user.carted_products
    else
      flash[:warning] = "Cart is empty"
      redirect_to'/'
    end
    @carted_products = current_user.carted_products.where(status: "carted")
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: "removed")
    redirect_to"/carted_products"
  end
end
