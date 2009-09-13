class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.integer :addressable_id
      t.string :addressable_type
      t.string :city
      t.string :country

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
