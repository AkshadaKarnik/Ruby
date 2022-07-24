#Scenario 1: Public methods

class A

	def public_method
		puts "public method of class A"
		protected_method	#calling protected methid from this public method
		private_method		#calling private method 
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

a = A.new
a.public_method	#calling public method by using an object
