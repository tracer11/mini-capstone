class CartedProduct < ApplicationRecord
  belongs_to :item
  belongs_to :order, optional: true
  belongs_to :user

end
