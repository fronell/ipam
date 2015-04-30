# Create network
## Parametized POST
curl http://localhost:4000/networks -d 'network[cidr_address]=192.168.1.0/24'

# Update occupado status of IP
# Parametized PATCH
curl http://localhost:4000/ips/1 -X PATCH -d 'ip[occupado]=true'
# JSON PATCH
curl http://localhost:4000/ips/1 -H "Content-type: application/json" -X PATCH -d '{ "ip": {"occupado":"false"} }'

# Delete a network
curl http://localhost:4000/networks/3 -X DELETE

# Gimme Free IP's!
## JSON POST
curl http://localhost:4000/networks/gimme_ips.json -H "Content-type: application/json" -d '{"amount":1, "cidr_address":"192.168.1.0/24"}'
