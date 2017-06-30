class CartedProduct < ApplicationRecord
  # belongs_to :item
  # belongs_to :order, optional: true
  # belongs_to :user

  validates :quantity, presence: true
  validates :quantity, numericality: true
  validates :quantity, numericality: {greater_than: 0}

  def subtotal
    item.price * quantity
  end

end
