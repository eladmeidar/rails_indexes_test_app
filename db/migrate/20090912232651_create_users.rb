class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :company_id
      t.integer :works_for_company_id # a differnt foreign key.
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
