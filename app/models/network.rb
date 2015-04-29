require 'ipaddr'

class Network < ActiveRecord::Base
  has_many :ips, dependent: :destroy

  # Automatically create all the IP's associated with the new network
  after_create do |net|
    IPAddr.new(net[:cidr_address]).to_range.each do |i|
      # The IP's need to be saved so they're committed to the DB
      net.ips.new(ip: i, occupado:false).save
    end
  end

  # Instance methods
  def gimme_ips(amount)
    # Return ips only associated with the network itself
    self.ips.where(occupado: false).limit(amount)
  end
end
