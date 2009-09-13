require 'test_helper'

class HasAndBelongsToManyTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  def setup
    @rake_output = `rake db:show_me_a_migration`
  end
  
  test "should add an index on :course_id and :user_id in the :courses_users table" do
    assert_match /add_index :courses_users, \[:course_id, :user_id\]/, @rake_output
    assert_match /remove_index :courses_users, :column =\> \[:course_id, :user_id\]/, @rake_output
  end
  
  test "should add an index on :plan_id and :student_id in the :course_plans table" do
    assert_match /add_index :course_plans, \[:plan_id, :student_id\]/, @rake_output
    assert_match /remove_index :course_plans, :column =\> \[:plan_id, :student_id\]/, @rake_output
  end
  
end
