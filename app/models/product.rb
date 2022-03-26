class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true

  # Scope for products by name
  scope :by_name, -> (name) { where("name ILIKE ?", "%#{name}%") }

  def self.search(params)
    Product.all unless params.nil?
    Product.by_name(params)
  end

end
