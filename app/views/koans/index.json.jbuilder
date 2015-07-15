json.array!(@koans) do |koan|
  json.extract! koan, :id, :title, :question, :solution
  json.url koan_url(koan, format: :json)
end
