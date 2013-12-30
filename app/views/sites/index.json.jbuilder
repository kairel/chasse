json.array!(@sites) do |site|
  json.extract! site, :id, :name, :superficie, :type_site, :liens, :description, :addresse, :ville, :pays, :string, :tel, :horaire
  json.url site_url(site, format: :json)
end
