json.extract! product, :id, :brand, :model, :variant, :price, :long_description, :short_description, :created_at, :updated_at
json.url product_url(product, format: :json)
