class Product < ApplicationRecord
  #--------------
  # Associations
  #--------------

  has_many :categorized_product
  has_many :categories, through: :categorized_product

  #-------------
  # Validations
  #-------------

  validates :name, presence: true, uniqueness: true
end
