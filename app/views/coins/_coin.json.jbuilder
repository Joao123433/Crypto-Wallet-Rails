json.extract! coin, :id, :description, :acronyum, :url_img, :created_at, :updated_at
json.url coin_url(coin, format: :json)
