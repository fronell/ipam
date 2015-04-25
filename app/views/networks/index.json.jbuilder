json.array!(@networks) do |network|
  json.extract! network, :id, :cidr_address, :name, :vlan, :location, :domain, :private
  json.url network_url(network, format: :json)
end
