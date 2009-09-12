class Company < ActiveRecord::Base
  has_many :users
  
  has_many :employees, :class_name => 'User', :foreign_key => 'works_for_company_id'
end
