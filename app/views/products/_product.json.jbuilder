json.extract! product, :id, :title, :stock, :created_at, :updated_at
json.url product_url(product, format: :json)
