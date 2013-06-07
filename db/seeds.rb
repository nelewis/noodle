# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_user = User.create(:email => "admin@admin.com",
                        :encrypted_password => "password",
                        :picture =>"/uploads/friend/picture/1/sublime_text.png",
                        :name => "Nicole admin user",
                        :address => "1117 27th Ave, Seattle WA 98122")

#admin_user.admin = true
admin_user.confirm!

regular_user1 = User.create(:email =>"tishy@tishy.com",
						:encrypted_password => "password",
                        :picture =>"/uploads/friend/picture/1/sublime_text.png",
                        :name =>"Tishy not admin user",
                        :address => "19653 117A Ave, Pitt Meadows, BC V3Y 1R8")

regular_user1.confirm! 

regular_user2 = User.create(:email =>"ade@ade.com",
                        :encrypted_password => "password",
                        :picture =>"/uploads/friend/picture/1/sublime_text.png",
                        :name =>"Ade not admin user",
                        :address => "121 Roberts Ave, Holbrook MA 02343")

regular_user2.confirm! 

Friend.create(:email =>"pops@pops.com",
                        :picture => "/uploads/friend/picture/1/sublime_text.png",
                        :name => "Gerald Arthur Lewis",
                        :address => "26 Byron Road, Aylesbury, Bucks, HP21 7LU")

Friend.create(:email =>"mum@mumsy.com",
                        :name => "Karen Rosemary Lewis",
                        :address => "26 Byron Road, Aylesbury, Bucks, HP21 7LU")

Friend.create(:email =>"dod@dod.com.com",
                        :picture => "/uploads/friend/picture/1/sublime_text.png",
                        :name => "Gerard Lewis",
                        :address => "32 Chequers Close, orby, Northants NN18 8QD")
Friend.create(:email => "brid@brid.com",
                        :picture =>"/uploads/friend/picture/1/sublime_text.png",
                        :name => "Brid Nowlan",
                        :address => "8525 4th Ave, Seattle WA 98122")
Friend.create(:email => "nicole@nicole.com",
                        :picture =>"/uploads/friend/picture/1/sublime_text.png",
                        :name => "Nicole Emma Lewis",
                        :address => "1117 27th Ave, Seattle WA 98122")
Friend.create(:email =>"tishy@tishy.com",
                        :picture =>"/uploads/friend/picture/1/sublime_text.png",
                        :name =>"Tishy not admin user",
                        :address => "19653 117A Ave, Pitt Meadows, BC V3Y 1R8")
Friend.create(:email =>"michelle@michelle.com",
                        :picture =>"/uploads/friend/picture/1/sublime_text.png",
                        :name =>"Michelle Beaton",
                        :address => "Friars Dell, 34 Woodside Road, Lower Woodside, LU1 4DQ")
Friend.create(:email =>"robert@robert.com",
                        :name =>"Robert Stutton",
                        :address => "Auckland, New Zealand")