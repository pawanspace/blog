# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

BlogEntry.create(:title => 'Java', :html => 'This is my first blog on <span style="color: red">Java.</span>', :time => Time.now)
BlogEntry.create(:title => 'JavaScript', :html => 'This is my first blog on <span style="color: red">JavaScript.</span>', :time => Time.now)
BlogEntry.create(:title => 'Ruby', :html => 'This is my first blog on <span style="color: red">Ruby.</span>', :time => Time.now)
BlogEntry.create(:title => 'JQuery', :html => 'This is my first blog on <span style="color: red">JQuery.</span>', :time => Time.now)
BlogEntry.create(:title => 'HTML', :html => 'This is my first blog on <span style="color: red">HTML.</span>', :time => Time.now)
