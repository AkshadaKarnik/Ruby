#**************************	Module case2	**********************************************************
#when we have to use two modules Fruit.rb and Veg.rb in MainFruit_Veg.rb using some keywords
#Note that these two modules are in the same directory of the main ruby file

$LOAD_PATH << '.'

require "Fruit"	#we can also use ./ in require if don't want to load path
require "Veg"

include Fruit
include Veg

class ModulesCase2
	def quality
		puts "Quality is good"
	end
	def self.price
		puts "Price is 50"
	end

	obj1 = ModulesCase2.new
	obj2 = ModulesCase2.new
	obj3 = ModulesCase2.new

	obj1.quality
	self.price

	#using Fruits and Veggies modules ki instance methods here 
	self.new.fruit_name
	self.new.veggie_name

	#using Fruits and Veggies modules ki module methods here
	Fruit.color
	Veg.color
end


