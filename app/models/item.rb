class Item < ApplicationRecord
    belongs_to :supplier
    has_many :images
    has_many :category_items
    has_many :categories, through: :category_items
    has_many :carted_products
    has_many :orders, through: :carted_products

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :price, presence: true
    validates :price, numericality: true
    validates :description, presence: true
    validates :description, length: {maximum: 500}
    #validates :price, format: {with: (/\d+[.]+([0-9])\d/}

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

  def first_image_url
    image_collection = images
    if image_collection.length == 0
      "http://orig14.deviantart.net/71cf/f/2010/149/1/0/ricers_the_downfall_of_honda_by_jedijaffy14.jpg"
    else
     image_collection.first.url
   end
  end
end
