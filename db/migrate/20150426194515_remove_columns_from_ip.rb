class RemoveColumnsFromIp < ActiveRecord::Migration
  def change
    remove_column :ips, :name, :string
    remove_column :ips, :class_c, :string
    remove_column :ips, :network_id, :string
  end
end
