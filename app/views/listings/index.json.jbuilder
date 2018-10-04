json.array!(@listings) do |listing|
    json.extract! listing, :id, :name, :category, :brand, :price, :color, :description, :image
    json.url listing_url(listing, format: :json)
end