class RemoveColumnsFromNetwork < ActiveRecord::Migration
  def change
    remove_column :networks, :name, :string
    remove_column :networks, :vlan, :string
    remove_column :networks, :location, :string
    remove_column :networks, :domain, :string
    remove_column :networks, :private, :string
  end
end
