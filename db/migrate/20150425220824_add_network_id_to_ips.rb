class AddNetworkIdToIps < ActiveRecord::Migration
  def change
    add_column :ips, :network_id, :integer
  end
end
