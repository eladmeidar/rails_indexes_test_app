class CreateHabtmTableForCoursesUsers < ActiveRecord::Migration
  def self.up
    # Create a real basic table, that will require no special options on the HABTM definition on the models.
    create_table :courses_users, :id => false do |t|
      t.integer :user_id
      t.integer :course_id
    end
    
    # This is the same join table, only with :join_table, :foreign_key and :association_foreign_key
    create_table :course_plans, :id => false do |t|
      t.integer :student_id # == user_id
      t.integer :plan_id # == course_id
    end
  end

  def self.down
    drop_table :course_plans
    drop_table :courses_users
  end
end
