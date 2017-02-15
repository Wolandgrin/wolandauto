json.extract! item, :id, :name, :price, :interest, :duration, :created_at, :updated_at
json.url item_url(item, format: :json)