json.array!(@memos) do |memo|
  json.extract! memo, :id, :title, :status, :content_body, :user_id
  json.url memo_url(memo, format: :json)
end
