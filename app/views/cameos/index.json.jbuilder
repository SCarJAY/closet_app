json.array!(@cameos) do |cameo|
  json.extract! cameo, :id, :item_id, :outfit_id
  json.url cameo_url(cameo, format: :json)
end
