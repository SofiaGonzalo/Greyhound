json.extract! product, :id, :name, :description, :price, :url, :created_at, :updated_at
json.url product_url(product, format: :json)
