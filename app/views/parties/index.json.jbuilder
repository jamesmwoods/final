json.array!(@parties) do |party|
  json.extract! party, :id, :description, :title
  json.url party_url(party, format: :json)
end
