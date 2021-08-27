class CategorizedProduct < ApplicationRecord
  #--------------
  # Associations
  #--------------

  belongs_to :category
  belongs_to :product
end
