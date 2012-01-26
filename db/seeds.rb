# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)


###CREATE ADMIN
puts 'SETTING UP DEFAULT ADMIN'
AdminUser.delete_all
a = AdminUser.create!(:email => 'admin@mail.com', :password => 'password', :password_confirmation => 'password')                              
puts "Admin Created"

###CREATE States
puts 'CREATING STATES'
State.delete_all
x = State.create! :name => 'New York', :short => 'NY'
puts 'New State created: ' << x.short
x = State.create! :name => 'Connecticut', :short => 'CT'
puts 'New State created: ' << x.short
x = State.create! :name => 'New Jersey', :short => 'NJ'
puts 'New State created: ' << x.short
x = State.create! :name => 'Rhode Island', :short => 'RI'
puts 'New State created: ' << x.short
x = State.create! :name => 'Vermont', :short => 'VT'
puts 'New State created: ' << x.short
x = State.create! :name => 'Delaware', :short => 'DE'
puts 'New State created: ' << x.short
x = State.create! :name => 'Pennsylvania', :short => 'PA'
puts 'New State created: ' << x.short

puts 'SETTING UP DEFAULT USER LOGIN'
User.delete_all
user = User.create! :name => 'Pedro', :lastName => 'Ferrer', :email => 'pferrer88@gmail.com', :password => 'password', :password_confirmation => 'password',
  :state_id => x.id, :city => 'Urass', :phone => '1234567890', :points => '5', :comfirmed => true
user.confirm!
puts 'New user created: ' << user.name
