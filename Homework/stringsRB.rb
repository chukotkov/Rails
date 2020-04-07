#careful with single/double quotes
single_quote='this is with a single quote. \n New lines are ignored.'
double_quote="this is with a double quote. \n New lines are honored."

puts single_quote
puts double_quote

#embedding of vars is only possible in double quotes
def multiply_vars(var1,var2)
	puts "#{var1} multiplied by #{var2} is #{var1*var2}"
end

multiply_vars(3,5)

# ! methods modify the string var
my_name=" georgi"
puts my_name.lstrip.capitalize
puts my_name
puts my_name.lstrip!.capitalize!
puts my_name

#replace text
my_name[0]="B"
puts my_name

rand_text=%Q{Who knew there was a cat outside?
				The other dogs knew.}

rand_text.lines do |line|
	line.sub! 'cat', 'dog'
	puts "#{line.strip}"
	puts "#{line}"
end



#### Arrays

#heterogenous
rand_array=[1,"hi cat",:five]
p rand_array[1]

#text parsing
words_arrays=%w{so many lovely dogs outside today}
p words_arrays[-2]
p words_arrays[-3,2]
p words_arrays[2,4]
p words_arrays.join(',')
p words_arrays

words_arrays.each {|elem| print elem}
puts
p words_arrays.select {|elem| elem>'n'}
p words_arrays.reject {|elem| elem>'n'}
new_array=words_arrays.map {|elem| elem+"duck"}
p new_array


####Hashes
kings={"name"=>"Tut","country"=>"Egypt","years"=>"long ago"}
puts kings.length
puts kings["name"]

kings["gender"]="male"

kings.each_pair do |key,value|
	puts "Key: #{key} Value: #{value}"
end


###CLASSES

class Car
	def initialize (brand,model,year)
		@brand=brand
		@model=model
		@year=year
	end
	def get_info
		@colour="Red"
		"Brand: #{@brand}, Model:#{@model} Year: #{@year}"
	end
	#getter
	def display_brand
		@brand
	end
	#setter
	def set_brand=(new_brand)
		@brand=new_brand
	end
end

car1=Car.new("Chevrolet","Mustang",1979)
p car1.instance_variables
puts car1.get_info
p car1.instance_variables

puts car1.display_brand
car1.set_brand="Ford"
puts car1.get_info

class Dwelling
	attr_accessor :type, :age
#use self to make a variable global
end

dwelling1=Dwelling.new
p dwelling1.type
dwelling1.type="tent"
dwelling1.age=20
dwelling1.age="old"
p dwelling1



class Dwelling
	attr_reader :age
	attr_accessor :type

	def initialize (type, age) #initializes the class
		@type=type
		self.age=age #calls the method .age
	end
	def age=(new_age) #defines a new method
		@age||=5 #default
		@age=new_age unless new_age>300
	end
end
dwelling1=Dwelling.new("tent",360)
p dwelling1.age
dwelling1.age=13
p dwelling1.age
dwelling1.age=500
p dwelling1.age
