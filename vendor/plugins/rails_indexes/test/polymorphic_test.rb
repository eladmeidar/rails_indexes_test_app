require 'test_helper'

class PolymorphicTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  def setup
    @rake_output = `rake db:show_me_a_migration`
  end
  
  test "should add an index on [:addressable_id, :addressable_type] in the :addresses table" do
    assert_match /add_index :addresses, \[:addressable_id, :addressable_type\]/, @rake_output
    assert_match /remove_index :addresses, :column =\> \[:addressable_id, :addressable_type\]/, @rake_output
  end
  
end
