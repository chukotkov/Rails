File.foreach('exists.txt') do |line|
	puts line
	p line
	p line.chomp
	p line.split
end

#handling errors
begin
	File.foreach('do_not_exist.txt') do |line|
		puts line.chomp
	end

	rescue Exception=>e
		puts e.message
		puts "This didn't happen"
end

if File.exist? 'do_not_exist.txt'
	File.foreach('do_not_exist.txt') do |line|
		puts line.chomp
	end
end

File.open('text_file.txt','w') do |file|
	file.puts "did it write it down?"
	file.puts "yes, it did!"
end

#FILES CLOSE AUTOMATICALLY! YAY!!!

puts ENV['EDITOR']