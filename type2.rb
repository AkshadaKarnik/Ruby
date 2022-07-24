#Scenario 2: Private methods are inherited

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

class B<A 
	def public_method_in_B
		public_method
		protected_method
		private_method
	end
end

b = B.new
b.public_method_in_B
