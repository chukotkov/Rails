test_var = 10

if test_var==5
  puts "test_var is test_var"
elsif test_var==10
  puts "test_var is 10"
else
  puts "test_var is 67"
end

unless test_var==10
  puts "test_var is not 10"
end

while test_var > 5
  puts test_var**2
  test_var= test_var-1
end

puts 'new task'

until test_var>=14
  puts test_var**2
  test_var +=1
end

puts 'tell me this works' if test_var**2>150 and test_var**2<200

test_var=2
test_var*=2 while test_var<200
puts test_var

test_var=15

case 
  when (test_var>=16 and test_var<18)
    puts 'can drive'
  when (test_var>=18 and test_var<21)
    puts 'can drive & vote'
  when test_var>=21
    puts 'can drive, vote, and buy a drink'
  else
    puts 'tiny little baby'
 end



name="Georgi"
case name
  when /geor/i then puts 'this should be Georgi' #/***/i calls a regular expression.the when uses === comparison
  when 'RunDMS' then puts 'Georgi is a great musician'
end

#for loops are avoided in ruby
for test_var in 0..10
  puts test_var**3
end

#replaced by each/times
10.times {|counter| puts counter**4 if counter<5} #counter starts at 0

10.times do |counter|
	if counter<5 
		puts counter**4
	end
end


#functions & methods
def SimpleMethod()
  puts 'Remember that functions in Ruby belong to a class, so they are just another method'
end

SimpleMethod() #parentheses are optional in Ruby(are they?)

def LetsAdd(var1,var2)
  var1+var2
end

puts LetsAdd(6,8)
puts LetsAdd('Pancho','Vladigerov')

def can_divide_by?(number)
	return false if number.zero?
	true
end
puts can_divide_by? 3
puts can_divide_by? 0

def calc_max(first_param,*array_of_params,another_param,last_param)
	array_of_params.max
end

puts calc_max('some text',54,123,-2,'another text','last text')

