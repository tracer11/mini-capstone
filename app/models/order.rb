class Order < ApplicationRecord
  belongs_to :item, optional: true
  belongs_to :user
  has_many :carted_products
  has_many :items, through: :carted_products 

  def price_quantity
   @price = item.price * quantity
  end

  def tax_quantity
    @tax = @price * 0.09
  end

  def total_quantity
    @price + @tax
  end

end

