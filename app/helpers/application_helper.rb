module ApplicationHelper
    require 'httparty'
    require 'json'
    require 'optparse'
    
  def search(product_category, product_tags, product_type, brand, price_greater_than, price_less_than)
    url = "https://makeup-api.herokuapp.com/api/v1/products?q="
    params = {
        product_category: product_category,
        product_tags: product_tags,
        product_type: product_type,
        brand: brand,
        price_greater_than: price_greater_than,
        price_less_than: price_less_than,
    }
    response = HTTParty.get(url, params: params)
    response.parse
  end
end
