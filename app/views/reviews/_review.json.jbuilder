json.extract! review, :id, :user_id, :product_id, :content, :created_at, :updated_at
json.url review_url(review, format: :json)
