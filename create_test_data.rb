#!/usr/bin/env ruby

#REST client reference:
#http://wiki.servicenow.com/index.php?title=Table_API_Ruby_Examples#gsc.tab=0
#ipaddr reference:
#http://www.brownfort.com/2014/09/ip-operations-ruby/

require 'rest-client'
require 'json'
require 'ipaddr'

host = 'http://localhost:4000'
net  = {
  cidr_address: '192.168.1.0/24'
}

def create_net(host, net)
  RestClient.post("#{host}/networks",
                  net.to_json,    # Encode the entire body as JSON
                  {
                    :content_type => 'application/json',
                    :accept => 'application/json'
                  })
end

def create_ips(host, net)
  net_id = 1

  IPAddr.new(net[:cidr_address]).to_range.each do |i|
    ip = {}
    # JSON data needs to be encapsulated under a key that matches the model name
    ip['ip'] = {
        ip: i,
        occupado: false,
        network_id: net_id
    }

    RestClient.post("#{host}/ips",
                    ip.to_json,    # Encode the entire body as JSON
                    {
                      :content_type => 'application/json',
                      :accept => 'application/json'
                    })
  end
end

create_net(host, net)
create_ips(host, net)
