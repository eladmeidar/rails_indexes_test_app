class User < ActiveRecord::Base
  
  
  belongs_to :company
  belongs_to :work_place, :class_name => 'Company', :foreign_key => 'works_for_company_id'
  has_one :address, :as => :addressable
  
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :plans, :class_name => 'Course', 
                                  :join_table => 'course_plans', 
                                  :foreign_key => 'student_id', 
                                  :association_foreign_key => 'plan_id'
end
