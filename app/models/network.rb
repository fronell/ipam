require 'ipaddr'

class Network < ActiveRecord::Base
  has_many :ips, dependent: :destroy

  # Automatically create all the IP's associated with the new network
  after_create do |net|
    IPAddr.new(net[:cidr_address]).to_range.each do |i|
      # Creates the IP but doesn't save to the DB
      #net.ips.new(ip: i, occupado:false)
      # Saves the IP to the DB
      #net.ips.new(ip: i, occupado:false).save
      # Creates and saves the IP to the DB
      net.ips.create(ip: i, occupado:false)
    end
  end

  # Instance methods
  def gimme_ips(amount)
    # Return ips only associated with the network itself
    self.ips.where(occupado: false).limit(amount)
  end
end
