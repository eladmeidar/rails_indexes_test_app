require 'test_helper'

class BelongsToTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  def setup
    @rake_output = `rake db:show_me_a_migration`
  end
  
  test "should add an index on :company_id in the :users table" do
    assert_match /add_index :users, :company_id/, @rake_output
    assert_match /remove_index :users, :company_id/, @rake_output
  end
  
  test "should add an index on :works_for_company_id in the :users table" do
    assert_match /add_index :users, :works_for_company_id/, @rake_output
    assert_match /remove_index :users, :works_for_company_id/, @rake_output
  end
  
end
