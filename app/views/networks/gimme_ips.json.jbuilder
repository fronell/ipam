json.array!(@ips) do |ip|
  #json.extract! ip, :id, :ip
  json.extract! ip, :ip
end
