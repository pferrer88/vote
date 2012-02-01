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
a = AdminUser.create!(:email => 'admin@mail.com', :password => 'schloeter', :password_confirmation => 'schloeter')                              
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
user1 = User.create! :name => 'Pedro', :lastName => 'Ferrer', :email => 'pferrer88@gmail.com', :password => 'asdqwe123', :password_confirmation => 'asdqwe123',
  :state_id => x.id, :city => 'Urass', :phone => '1234567890', :points => '5', :comfirmed => true, :staff => true
user1.confirm!
puts 'New user created: ' << user1.name
user = User.create! :name => 'Test', :lastName => 'User', :email => 'user@mail.com', :password => 'password', :password_confirmation => 'password',
  :state_id => x.id, :city => 'Urass', :phone => '1234567890', :points => '5', :comfirmed => true, :assigned_to_id => user1.id
user.confirm!
puts 'New user created: ' << user.name