class Category < ApplicationRecord
  #--------------
  # Associations
  #--------------

  belongs_to :parent, class_name: 'Category', optional: true
  has_many :children, class_name: 'Category', foreign_key: :parent_id, dependent: :nullify

  has_many :categorized_product
  has_many :products, through: :categorized_product

  #-------------
  # Validations
  #-------------

  validates :name, presence: true, uniqueness: true
end
