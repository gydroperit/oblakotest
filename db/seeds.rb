# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'yaml'
good = YAML.load_file("/home/qsion/app/db/seeds.yml")
good["projects"].each do |x|
	project = Project.create(title: x["title"])
 	x["todos"].each do |y| 
	todo = Todo.create(text: y["text"], isCompleted: y["isCompleted"])
	project.todos << todo
	end
end

