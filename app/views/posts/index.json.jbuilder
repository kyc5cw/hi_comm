json.array!(@posts) do |post|
  json.extract! post, :id, :board_id, :title, :content, :user_id
  json.url post_url(post, format: :json)
end
