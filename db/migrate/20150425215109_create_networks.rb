class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :cidr_address
      t.string :name
      t.string :vlan
      t.string :location
      t.string :domain
      t.boolean :private

      t.timestamps null: false
    end
  end
end
