json.array!(@posts) do |post|
  json.extract! post, :id, :username, :content, :blog_id
  json.url post_url(post, format: :json)
end
