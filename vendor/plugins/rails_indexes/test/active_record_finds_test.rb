require 'test_helper'

class ActiveRecordFindsTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  def setup
    @rake_output = `rake db:show_me_ar_find_indexes`
  end
  
  test "should add index on :id on :courses, :companies and :users" do
    assert_match /add_index :courses, :id/, @rake_output
    assert_match /add_index :companies, :id/, @rake_output
    assert_match /add_index :users, :id/, @rake_output

    assert_match /remove_index :courses, :id/, @rake_output
    assert_match /remove_index :companies, :id/, @rake_output
    assert_match /remove_index :users, :id/, @rake_output
  end
  
  test "should add indexes for :name and [:company_id, :name] for :users due to finds on UsersController#show" do
    assert_match /add_index :users, :name/, @rake_output
    assert_match /add_index :users, \[:company_id, :name\]/, @rake_output
    
    assert_match /remove_index :users, :name/, @rake_output
    assert_match /remove_index :users, :column =\> \[:company_id, :name\]/, @rake_output
    
  end
  
end
