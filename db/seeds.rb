# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)


# ###CREATE ADMIN
# puts 'SETTING UP DEFAULT ADMIN'
# AdminUser.delete_all
# a = AdminUser.create!(:email => 'admin@mail.com', :password => 'schloeter', :password_confirmation => 'schloeter')                              
# puts "Admin Created"




# puts 'CREATING Countries'
# # Country.delete_all
# us = Country.create! :name => 'Estados Unidos', :short => 'EEUU'
# 
# puts 'CREATING Center'
# # Center.delete_all
# boston = Center.create! :name => 'Consulado de Boston',
#                         :address => '545 Boylston St., 3th Floor, Boston MA 02116',
#                         :phone => '(617) 266-9475 | (617) 266-9368',
#                         :country => us,
#                         :website => 'http://www.boston.embavenez-us.org/',
#                         :email => 'consulado@boston.embavenez-us.org',
#                         :hours => '9:00 am a 1:30 pm.'
# puts 'New Center created: ' << boston.name
# 
# chicago = Center.create! :name => 'Consulado de Chicago',
#                         :address => '20 N Wacker Dr., Suite #1925, 19th Floor, Chicago, IL 60606',
#                         :phone => '(312) 324-0907',
#                         :country => us,
#                         :website => 'http://www.chicago.embavenez-us.org/',
#                         :email => 'ven.chicago@gmail.com',
#                         :hours => '9:00 am a 1:30 pm.'
# puts 'New Center created: ' << chicago.name
# 
# houston = Center.create! :name => 'Consulado de Houston',
#                         :address => '2925 Briar Park Dr., Suite 900, Houston, TX 77042',
#                         :phone => '(713) 974-0028 | (713) 974-9002 | (713) 974-0027',
#                         :country => us,
#                         :website => 'http://www.consuvenezhouston.org/',
#                         :email => 'informacion@consuvenezhouston.org',
#                         :hours => '9:00 am a 1:00 pm.'
# puts 'New Center created: ' << houston.name
# miami = Center.create! :name => 'Consulado de Miami',
#                         :address => '1101 Brickell Av., Suite 901, Miami, FL 33131',
#                         :phone => '(305) 577-4214',
#                         :country => us,
#                         :website => 'http://www.consuve.net/',
#                         :email => 'conmiami@consuve.com',
#                         :hours => '9:00 am a 1:00 pm.'
# puts 'New Center created: ' << miami.name
# new_orleans = Center.create! :name => 'Consulado de New Orleans',
#                         :address => '2 Canal St., Suite 2300 World Trade Center, New Orleans, Lousiana 70130',
#                         :phone => '(504) 210-1020 | (504) 524-6700',
#                         :country => us,
#                         :website => 'http://www.neworleans.embavenez-us.org/',
#                         :email => 'info@neworleans.embavenez-us.org',
#                         :hours => '9:00 am a 1:30 pm.'
# puts 'New Center created: ' << new_orleans.name
# new_york = Center.create! :name => 'Consulado de Nueva York',
#                         :address => '7 East 51th Street, New York, NY 10022',
#                         :phone => '(212) 826-1660',
#                         :country => us,
#                         :website => 'http://www.newyork.embavenez-us.org/',
#                         :email => 'info@consulado-ny.gov.ve',
#                         :hours => '9:00 am a 1:00 pm.'
# puts 'New Center created: ' << new_york.name                        
# san_francisco = Center.create! :name => 'Consulado de San Francisco',
#                         :address => '311 California Street, Suite 620, San Francisco, CA 94104',
#                         :phone => '(415) 294-2252',
#                         :country => us,
#                         :website => 'http://www.sanfrancisco.embavenez-us.org/',
#                         :email => 'ven.sanfrancisco@gmail.com',
#                         :hours => '9:00 am a 1:30 pm.'
# puts 'New Center created: ' << san_francisco.name
# san_juan = Center.create! :name => 'Consulado de San Juan',
#                         :address => 'Avenida Ponce De Leon, Edificio Mercantil Plaza, Oficina 601, Hato Rey, PR 00918',
#                         :phone => '(787) 766-4250 | (787) 766-4251',
#                         :country => us,
#                         :website => 'http://www.puertorico.embavenez-us.org/',
#                         :email => 'venezuel@tld.net',
#                         :hours => '9:00 am a 3:00 pm.'
# puts 'New Center created: ' << san_juan.name
# washington = Center.create! :name => 'Consulado de Washington',
#                         :address => '1099 30th St. NW, Washington DC 20007',
#                         :phone => '(202)342-2214',
#                         :country => us,
#                         :website => 'http://www.venezuela-us.org/es',
#                         :email => 'consular@embavenez-us.org',
#                         :hours => '9:00 am a 1:00 pm.'                        
# puts 'New Center created: ' << washington.name






# ###CREATE States DELETE THIS!!!!!!!!!!!!!!!
# puts 'CREATING STATES'
# State.delete_all
# 
# x = State.create! :name => 'Connecticut', :short => 'CT', :center_id => new_york.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Delaware', :short => 'DE', :center_id => new_york.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Vermont', :short => 'VT', :center => new_york, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Pennsylvania', :short => 'PA', :center => new_york, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Rhode Island ', :short => 'RI', :center => new_york, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'New York', :short => 'NY', :center => new_york, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'New Jersey', :short => 'NJ', :center => new_york, :country_id =>us.id
# puts 'New State created: ' << x.short


# puts 'SETTING UP DEFAULT USER LOGIN'
# User.delete_all
# user1 = User.create! :name => 'Pedro', :lastName => 'Ferrer', :email => 'pferrer88@gmail.com', :password => 'asdqwe123', :password_confirmation => 'asdqwe123',
#   :state_id => x.id, :city => 'Urass', :phone => '1234567890', :points => '5', :comfirmed => true, :staff => true
# user1.confirm!
# puts 'New user created: ' << user1.name
# user = User.create! :name => 'Test', :lastName => 'User', :email => 'user@mail.com', :password => 'password', :password_confirmation => 'password',
#   :state_id => x.id, :city => 'Urass', :phone => '1234567890', :points => '5', :comfirmed => true, :assigned_to_id => user1.id
# user.confirm!
# puts 'New user created: ' << user.name





# State.all.each do |s|
#   s.center_id = new_york.id
#   s.country_id = us.id
#   s.save!
# end
# 
# x = State.create! :name => 'Alabama', :short => 'AL', :center_id => new_orleans.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Alaska', :short => 'AK', :center_id => san_francisco.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Arizona', :short => 'NY', :center_id => san_francisco.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Arkansas', :short => 'AR', :center_id => new_orleans.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'California', :short => 'CA', :center_id => san_francisco.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Colorado', :short => 'CO', :center_id => san_francisco.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Florida', :short => 'FL', :center_id => miami.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Georgia', :short => 'GA', :center_id => miami.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Hawaii', :short => 'HI', :center_id => san_francisco.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Idaho', :short => 'ID', :center_id => san_francisco.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Illinois', :short => 'IL', :center_id => chicago.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Indiana', :short => 'IN', :center_id => chicago.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Iowa', :short => 'IA', :center_id => chicago.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Kansas', :short => 'KS', :center_id => houston.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Kentucky', :short => 'KY', :center_id => washington.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Louisiana', :short => 'LA', :center_id => new_orleans.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Maine', :short => 'ME', :center_id => boston.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Maryland', :short => 'MD', :center_id => washington.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Massachusetts', :short => 'MA', :center_id => boston.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Michigan', :short => 'MI', :center_id => chicago.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Minnesota', :short => 'MN', :center_id => chicago.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#  
# x = State.create! :name => 'Mississippi', :short => 'MS', :center_id => new_orleans.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#  
# x = State.create! :name => 'Missouri', :short => 'MO', :center_id => new_orleans.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#   
# x = State.create! :name => 'Montana', :short => 'MT', :center_id => san_francisco.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#  
# x = State.create! :name => 'Nebraska', :short => 'NE', :center_id => chicago.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#  
# x = State.create! :name => 'Nevada', :short => 'NV', :center_id => san_francisco.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#  
# x = State.create! :name => 'New Hampshire', :short => 'NH', :center_id => boston.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'New Mexico', :short => 'NM', :center_id => houston.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'North Carolina', :short => 'NC', :center_id => miami.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#  
# x = State.create! :name => 'North Dakota ', :short => 'ND', :center_id => chicago.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#  
# x = State.create! :name => 'Ohio', :short => 'OH', :center_id => washington.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Oklahoma ', :short => 'OK', :center_id => houston.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Oregon ', :short => 'OR', :center_id => san_francisco.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'South Carolina', :short => 'SC', :center_id => miami.id, :country_id =>us.id
# puts 'New State created: ' << x.short 
#  
# x = State.create! :name => 'South Dakota ', :short => 'SD', :center_id => chicago.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#  
# x = State.create! :name => 'Tennessee', :short => 'TN', :center_id => new_orleans.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#  
# x = State.create! :name => 'Texas', :short => 'TX', :center_id => houston.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#  
# x = State.create! :name => 'Utah', :short => 'UT', :center_id => san_francisco.id, :country_id =>us.id
# puts 'New State created: ' << x.short
# 
# x = State.create! :name => 'Virginia', :short => 'VA', :center_id => washington.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#  
# x = State.create! :name => 'Washington', :short => 'WA', :center_id => san_francisco.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#  
# x = State.create! :name => 'West Virginia', :short => 'WV', :center_id => washington.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#  
# x = State.create! :name => 'Wisconsin ', :short => 'WI', :center_id => chicago.id, :country_id =>us.id
# puts 'New State created: ' << x.short
#  
# x = State.create! :name => 'Wyoming', :short => 'WY', :center_id => san_francisco.id, :country_id =>us.id
# puts 'New State created: ' << x.short




