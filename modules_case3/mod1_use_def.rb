#using this module method in another module named as mod2_use_def using some keywords

module Mod1UseDef
	def Mod1UseDef.dress_type	#module method
		puts "Type of the dress: Jeans"
	end
	def self.fabric_type	#module method
		puts "Fabric type is: Denim"
	end

	#calling a module method using its name
	self.dress_type
end
