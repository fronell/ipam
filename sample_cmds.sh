# Create network
## Parametized POST
curl http://localhost:4000/networks -d 'network[cidr_address]=192.168.1.0/24'
## JSON POST - We have to specify the model name at the beginning of the JSON
curl http://localhost:4000/networks.json -H "Content-type: application/json" -d '{ "network": {"cidr_address": "192.168.2.0"} }'

# Update occupado status of IP
## Parametized PATCH
curl http://localhost:4000/ips/1 -X PATCH -d 'ip[occupado]=true'
## JSON PATCH - We don't have to specify the model name in the JSON
curl http://localhost:4000/ips/1.json -H "Content-type: application/json" -X PATCH -d '{"occupado":"false"}'

# Delete a network
curl http://localhost:4000/networks/3 -X DELETE

# Gimme Free IP's!
## JSON POST
curl http://localhost:4000/networks/gimme_ips.json -H "Content-type: application/json" -d '{"amount":1, "cidr_address":"192.168.1.0/24"}'
