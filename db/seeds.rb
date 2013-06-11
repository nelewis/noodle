# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Friend.create(:email =>"pops@pops.com",
                        :picture => "/uploads/friend/picture/1/pops.jpg",
                        :name => "Gerald Arthur Lewis",
                        :dob => "1937-02-03",
                        :address => "26 Byron Road, Aylesbury, Bucks, HP21 7LU")

Friend.create(:email =>"mum@mumsy.com",
                        :name => "Karen Rosemary Lewis",
                        :dob=> "1942-11-09",
                        :address => "26 Byron Road, Aylesbury, Bucks, HP21 7LU")

Friend.create(:email =>"dod@dod.com.com",
                        :name => "Gerard Lewis",
                        :dob => "1965-02-01",
                        :address => "32 Chequers Close, Corby, Northants NN18 8QD")

Friend.create(:email => "brid@brid.com",
                        :name => "Brid Nowlan",
                        :dob => "1964-30-12",
                        :address => "8525 4th Ave, Seattle WA 98122")

Friend.create(:email => "nicole@nicole.com",
                        :picture =>"/uploads/friend/picture/1/nikki.jpg",
                        :dob => "1966-24-01",
                        :name => "Nicole Emma Lewis",
                        :address => "1117 27th Ave, Seattle WA 98122")

Friend.create(:email =>"tishy@tishy.com",
                        :name =>"Natasha Marie-Claire Etherington",
                        :dob=>"1973-26-02",        
                        :address => "19653 117A Ave, Pitt Meadows, BC V3Y 1R8")

Friend.create(:email =>"michelle@michelle.com",
                        :name =>"Michelle Beaton",
                        :dob =>"1976-03-01",
                        :address => "Friars Dell, 34 Woodside Road, Lower Woodside, LU1 4DQ")

Friend.create(:email =>"robert@robert.com",
                        :name =>"Robert Stutton",
                        :dob =>"1937-01-12",
                        :address => "Auckland, New Zealand")
                        
Month.create(:name =>"January", :id=>1)
Month.create(:name =>"February", :id=>2)
Month.create(:name =>"March", :id=>3)
Month.create(:name =>"April", :id=>4)
Month.create(:name =>"May", :id=>5)
Month.create(:name =>"June", :id=>6)
Month.create(:name =>"July", :id=>7)
Month.create(:name =>"August", :id=>8)
Month.create(:name =>"September", :id=>9)
Month.create(:name =>"October", :id=>10)
Month.create(:name =>"November", :id=>11)
Month.create(:name =>"December", :id=>12)
