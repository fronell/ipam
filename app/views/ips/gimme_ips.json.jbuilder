json.array!(@ips) do |ip|
  json.extract! ip, :id, :ip, :occupado
  json.url ip_url(ip, format: :json)
end
