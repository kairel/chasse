json.array!(@type_gibiers) do |type_gibier|
  json.extract! type_gibier, :id, :name
  json.url type_gibier_url(type_gibier, format: :json)
end
