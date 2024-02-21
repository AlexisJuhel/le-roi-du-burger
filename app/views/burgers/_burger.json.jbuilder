json.extract! burger, :id, :image, :name, :price, :description, :veggie, :created_at, :updated_at
json.url burger_url(burger, format: :json)
