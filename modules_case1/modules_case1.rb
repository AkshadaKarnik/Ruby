#*******************************	Module case1	*****************************************************
#when we've to use a module inside the main ruby file without using any keywords
#Note that module has instance method also 

module Fruits_mod
	def Fruits_mod.fruit #module method
		puts "Name is: Grapes"
	end
	def Fruits_mod.color	#module method
		puts "Color is: Light green"
	end
	def taste	#An instance method
		puts "Tastes: Tangy"
	end
end

class Fruit_class
	include Fruits_mod
	def fruit_list(*parameter_fruits)	#this is the instance method
		puts "The parameters are: #{parameter_fruits.length}"
		for i in 0...parameter_fruits.length
			puts "The fruits are: #{parameter_fruits[i]}"
		end
	end
		fruit1 = Fruit_class.new
		fruit1.fruit_list "Apple", "red", "sweet"	#calling the above instance method 

		#self.fruit_list	"Guava", "green", "sweet_sour"	#you can use this if we make the above def as a class method

		fruit3 = Fruit_class.new
		fruit3.taste	#calling the instance method of above module using object

		Fruits_mod.fruit  #calling the module's method
		Fruits_mod.color	#calling the module's method
end



