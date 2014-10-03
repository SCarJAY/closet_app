json.array!(@outfits) do |outfit|
  json.extract! outfit, :id, :dress_code, :top, :bottom, :one_piece, :shoes, :accessory, :user_id
  json.url outfit_url(outfit, format: :json)
end
