json.array!(@networks) do |network|
  json.extract! network, :id, :cidr_address
  json.url network_url(network, format: :json)
end
