class Cart < ApplicationRecord
    has_many :listings, dependent: :destroy

    def total_price
        listing.price * quantity
    end

    def subtotal
        carts.to_a.sum { |item| item.total_price }
    end

    def add_listing(listing_id)
        current_item = carts.find_by(listing_id: listing_id)
        if current_item
            current_item.quantity += 1
        else
            current_item = carts.build(listing_id: listing_id)
        end
        current_item
    end
end