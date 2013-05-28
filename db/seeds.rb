# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin_user = User.create(sequence(:email) { |n| "user#{n}@admin.com" },
                         :password => "password",
                         :name => "admin",
                         :picture =>"/uploads/friend/picture/1/sublime_text.png",
                         :created_at=> "2013-05-17 04:28:57 UTC")

#dmin_user.admin = true
admin_user.confirm!

regular_user = User.create(sequence(:email) { |n| "user#{n}@test.com" },
						   :password => "password",
                           :name => "testy",
                           :picture =>"/uploads/friend/picture/1/sublime_text.png",
                           :created_at=> "2013-05-17 04:28:57 UTC")

regular_user.admin = false

Friend.create(sequence(:email) { |n| "friend#{n}@pops.com" },
						   :password => "password",
                           :name => "Gerald Arthur Lewis",
                           :picture =>"/uploads/friend/picture/1/sublime_text.png",
                           :created_at=> "2013-05-17 04:28:57 UTC")

Friend.create(sequence(:email) { |n| "friend#{n}@mum.com" },
						   :password => "password",
                           :name => "Karen Rosemary Lewis",
                           :picture =>"/uploads/friend/picture/1/sublime_text.png",
                           :created_at=> "2013-05-17 04:28:57 UTC")