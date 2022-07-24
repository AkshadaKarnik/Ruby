#Scenario 4: Acessing the protected methods using the explicit receiver

class A
	def public_method
		puts "public method of class A"
	end

	protected
	def protected_method
		puts "protected method of class A"
	end

	private 
	def private_method
		puts "private method of class A"
	end
end

class B < A 
	def public_method_in_B 
		public_method 			#directly calling above method as it can be inherited (n btw it's a Public method)
		b = B.new
		b.protected_method	#calling using this explicit receiver #Success n Will Work (as you wanna access Protected method)
		b.private_method		#calling using this explict receiver 	#Failed n Won't Work (as you wanna acccess Private method)
	end
end

b1 = B.new
b1.public_method_in_B 