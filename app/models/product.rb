class Product < ApplicationRecord
  validates :title, length: { minimum: 3 }
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
