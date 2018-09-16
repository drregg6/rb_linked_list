require './list'
require './node'

my_list = List.new

my_list.append("Hello")
my_list.append("world!")
my_list.append("This")
my_list.append("will")
my_list.append("be")
my_list.append("cheese")
my_list.append("and")
my_list.append("crackers")
my_list.prepend("Dave:")
my_list.prepend("Dear")

p my_list
p my_list.node
puts "The size of the linked list: #{my_list.size}"
puts "\n"
puts my_list.to_s
puts "At index (1): #{my_list.at(1)}"
puts "At index (4): #{my_list.at(4)}"
puts "\n"
puts "Head: #{my_list.head}"
puts "Tail: #{my_list.tail}"
puts "\n"
p my_list.pop
puts "\n"
puts "Check 'dog': #{my_list.exists?("dog")}"
puts "Check 'world!: #{my_list.exists?("world!")}"
puts "Index of 'world!': #{my_list.find("world!")}"
puts "Index of 'cheese': #{my_list.find("cheese")}"
puts "Index of 'caravan': #{my_list.find("caravan")}"