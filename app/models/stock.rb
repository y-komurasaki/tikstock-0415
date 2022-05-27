class Stock < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  def self.search(search)
    if search != ""
      Stock.where('item_name LIKE(?)', "%#{search}%")
      Stock.where('info LIKE(?)', "%#{search}%")
    else
      Stock.all
    end
  end

  with_options presence: true do
    validates :image
    validates :item_name
    validates :info
    validates :stock_quantity
  end

  validates :stock_quantity, numericality: {only_integer: true}

end
