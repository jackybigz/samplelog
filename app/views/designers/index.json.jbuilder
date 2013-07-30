json.array!(@designers) do |designer|
  json.extract! designer, :name
  json.url designer_url(designer, format: :json)
end
