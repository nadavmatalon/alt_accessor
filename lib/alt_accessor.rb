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
				else
					raise ArgumentError, "#{name} is not a symbol"
				end
			end
		else
			raise ArgumentError, "alt_accessor method requires a symbol"
		end
	end
end
