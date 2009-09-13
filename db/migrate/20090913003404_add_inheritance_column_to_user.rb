class AddInheritanceColumnToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :sub_type, :string
  end

  def self.down
    remove_column :users, :sub_type
  end
end
