class Item < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime('%e %b %Y %H:%M:%S%p')
  end

  def discout
    price = price * .50
    p price
  end
end
