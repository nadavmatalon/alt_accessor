module AltAccessor

	def alt_accessor *args
		if args != []
			args.each do |name|
				if name.is_a?Symbol
					define_method("#{name}") do
		      			instance_variable_get("@#{name}")
		 			end
					define_method("#{name}=") do |val|
		      			instance_variable_set("@#{name}", val)
		    		end
		    		"attr_accessor methods created for: #{name}"
		    	else
		    		return "invalid argument: #{name} is not a symbol"
		   		end
		   	end
		else
			"invalid argument: method requires a symbol as an argument"
		end
	end	
end
