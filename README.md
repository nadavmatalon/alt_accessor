##Makers Academy | Week 5 | Challenge | Part III (Bonus)

##Table of Contents

* [General Description](#general-description)
* [Guidelines](#guidelines)
* [Testing](#testing)


##General Description

This repo contians the answer to __Week 5 Friday Challange (Part III (Bonus)__ of the course 
at [Makers Academy](http://www.makersacademy.com/).

This challange was about writing an effective [Ruby](https://www.ruby-lang.org/en/)-based 
equivallent to the [__attr_accessor()__](http://www.rubyist.net/~slagell/ruby/accessors.html) 
method. This method utilizes 
[metaprogramming](http://en.wikipedia.org/wiki/Metaprogramming) techniques to 
dynamically create other methods which can access and set instance variables.

The equivallent method offered here, __alt_accessor()__, was created according to 
[TDD](http://en.wikipedia.org/wiki/Test-driven_development) 
methodology (tests written with [Rspec](http://rspec.info/)).


##Guidelines

* Re-implement the attr_accessor method
* The idea is that this method will create methods dynamically to access and to set 
  instance variables

  For example, if we implement:

```ruby
alt_accessor :name
```
   The alternative method will create the following methods:

```ruby
def name
	@name
end

def name=(name)
	@name = name
end
```


##Testing

Tests were written with [Rspec](http://rspec.info/) (3.0.4).

To run the test in terminal: 

```bash
$> cd alt_accessor
$> rspec
```
