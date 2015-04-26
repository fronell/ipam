json.array!(@networks) do |network|
  json.extract! network, :id, :cidr_address, :network_id
  json.url network_url(network, format: :json)
end
