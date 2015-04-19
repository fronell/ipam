class CreateIps < ActiveRecord::Migration
  def change
    create_table :ips do |t|
      t.string :ip
      t.string :class_c
      t.boolean :occupado

      t.timestamps null: false
    end
  end
end
