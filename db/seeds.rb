# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

user = User.new
user.email = "chicken@chicken.com"
user.password = "chickenchicken"
user.password_confirmation = "chickenchicken"
user.save!

Style.destroy_all

s1 = Style.create :content => "body {background-color: red;}"


Hypertext.destroy_all

h1 = Hypertext.create :content => "<p>Hi, my name is Chicken.</p>"



u1 = User.first

u1.styles << s1
u1.hypertexts << h1