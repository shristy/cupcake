json.array!(@reviews) do |review|
  json.extract! review, :cupcake_id, :message, :reviewer
  json.url review_url(review, format: :json)
end
