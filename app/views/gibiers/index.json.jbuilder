json.array!(@gibiers) do |gibier|
  json.extract! gibier, :id, :name, :icon, :type_gibier
  json.url gibier_url(gibier, format: :json)
end
