class AddNetworkRefToIps < ActiveRecord::Migration
  def change
    add_reference :ips, :network, index: true, foreign_key: true
  end
end
