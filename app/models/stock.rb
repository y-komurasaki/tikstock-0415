class Stock < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :item_name
    validates :info
    validates :stock_quantity
  end

  validates :stock_quantity, numericality: {only_integer: true}

end
