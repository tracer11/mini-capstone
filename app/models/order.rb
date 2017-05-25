class Order < ApplicationRecord
  belongs_to :item, optional: true
  belongs_to :user
  has_many :carted_products
  has_many :items, through: :carted_products 

  def price_quantity
    @carted_products = current_user.cart
    price = 0
    @carted_products.each do |cart|
      price =+ cart.item.price
    end 
  end

  def tax_quantity
    @tax = @price * 0.09
  end

  def total_quantity
    @price + @tax
  end

end

