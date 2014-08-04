require "./lib/alt_accessor.rb"

include AltAccessor

class Person
	alt_accessor :name
end

describe "alt_accessor method" do

	let(:person) { Person.new }

	it "creates an attr_reader method to access instace variable of a class" do
		expect(person.name).to eq nil
	end

	it "creates an attr_writer method to set instace variable of a class" do
		person.name = "John"
		expect(person.name).to eq "John"
	end

	it "must have an argument" do
		person = Proc.new { class PersonTwo; alt_accessor; end }
		error_message = "alt_accessor method requires a symbol"
		expect { person.call }.to raise_error(ArgumentError, error_message)
	end

	it "can have more than one argument" do
		class Person; alt_accessor(:first_name, :last_name); end
		person = Person.new
		expect(person.first_name).to eq nil
		expect(person.last_name).to eq nil
		person.first_name = "John"
		person.last_name = "Apple"
		expect(person.first_name).to eq "John"
		expect(person.last_name).to eq "Apple"
	end

	it "accepts a symbol as an argument" do
		expect { class AltSymbol; alt_accessor :symbol; end }.not_to raise_error
	end

	it "does not accept an integer as an argument" do
		person = Proc.new { class Person; alt_accessor 1; end }
		error_message = "1 is not a symbol"
		expect { person.call }.to raise_error(ArgumentError, error_message)
	end

	it "does not accept a string as an argument" do
		person = Proc.new { class Person; alt_accessor "string"; end }
		error_message = "string is not a symbol"
		expect { person.call }.to raise_error(ArgumentError, error_message)
	end

	it "does not accept an array as an argument" do
		person = Proc.new { class Person; alt_accessor []; end }
		error_message = "[] is not a symbol"
		expect { person.call }.to raise_error(ArgumentError, error_message)
	end
end

