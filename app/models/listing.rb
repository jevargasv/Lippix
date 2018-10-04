class Listing < ApplicationRecord
    validates :name, :category, :brand, :description, :color, :price, presence: true
    validates :price, numericality: { greater_than: 0 }
    has_one_attached :image
    belongs_to :user, optional: true
    acts_as_commontable dependent: :destroy
    has_many :carts
end