require 'test_helper'

class SingleTableInheritanceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  def setup
    @rake_output = `rake db:show_me_a_migration`
  end
  
  test "should add an index on [:id, :sub_type] in the :users table when there's an STI relationship (SuperUser) with a custom inheritance_column" do
    assert_match /add_index :users, [:id, :sub_type]/, @rake_output
    assert_match /remove_index :users, :column =\> \[:id, :sub_type\]/, @rake_output
  end
  
end
