json.array!(@cupcakes) do |cupcake|
  json.extract! cupcake, :flavour, :price
  json.url cupcake_url(cupcake, format: :json)
end
