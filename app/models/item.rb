class Item < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime('%e %b %Y %H:%M:%S%p')
  end

  def discount_item
    if discounted?
      massage = "Discount Item!"
    else
      message = "Everyday Value!"
    end
  end

  def tax
    @tax = price * 0.09
  end

  def total
   price + @tax
  end

  def discounted?
     price < 1000
      
  end
end
