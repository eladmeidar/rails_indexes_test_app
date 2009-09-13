require 'rubygems'
require 'active_support'
require 'active_support/test_case'

def generate_ar_finds_migration
  output = `RAILS_ENV=test rake db:show_me_ar_find_indexes`
end