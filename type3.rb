#Scenario 3: Accessing protected and private methods

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
		public_method
	#	protected_method	#Can be inherited 
	#	private_method		#Can be inherited 
	end
end

b = B.new
b.public_method_in_B
b.protected_method	#It could not be accessed by the object (as it's outside the class A and also the subclass B)
b.private_method		#It could'nt be accessed by an object of another class




#******************************************************************************************************

#NOTE: To be noted that the [protected] access control can be accessed by an explicit receiver(i.e. jab koi same class ki method Ya usi class ka object Ya subclass ka object (class k Andar reh kar protected method ko call kre)

#NOTE: Also, note that [private] access control can only be accessed by the object of the same class only And Not outside the class.
#So here, there is no concept of using any explicit receiver

#******************************************************************************************************