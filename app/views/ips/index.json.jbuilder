json.array!(@ips) do |ip|
  json.extract! ip, :id, :ip, :class_c, :occupado
  json.url ip_url(ip, format: :json)
end
