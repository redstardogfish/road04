class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :role, :bio
end
