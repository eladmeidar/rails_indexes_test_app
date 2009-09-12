class Course < ActiveRecord::Base
  
  has_and_belongs_to_many :users
  has_and_belongs_to_many :students, :class_name => 'User', 
                                     :join_table => 'course_plans', 
                                     :foreign_key => 'plan_id', 
                                     :association_foreign_key => 'student_id'
  
end
