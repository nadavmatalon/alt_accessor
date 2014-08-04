require "./lib/alt_accessor.rb"

include AltAccessor

context "alt_accessor method" do

	it "creates attr_reader method to access given instace variable" do
		Object.alt_accessor :var
		expect(var).to eq nil
		expect { Object.alt_accessor :var }.not_to raise_error
	end

	it "creates attr_writer method to set given instace variable" do
		Object.alt_accessor :var
		@var = 2
		expect(var).to eq 2
	end

	it "must have an argument" do
		error_message = "invalid argument: method requires a symbol as an argument"
		expect(Object.alt_accessor).to eq error_message
	end

	it "can have more than one argument" do
		Object.alt_accessor :var_1, :var_2
		expect(var_1).to eq nil
		expect(var_2).to eq nil
		expect { Object.alt_accessor :var_1 }.not_to raise_error
		expect { Object.alt_accessor :var_1 }.not_to raise_error
		@var_1 = 1
		expect(var_1).to eq 1
		@var_2 = 2
		expect(var_2).to eq 2
	end

	it "only accepts a symbol as an argument" do
		expect(Object.alt_accessor 1).to eq "invalid argument: 1 is not a symbol"
		expect(Object.alt_accessor "string").to eq "invalid argument: string is not a symbol"
	end
end

