require './list'
require './node'

my_list = List.new
my_list.create_node("Hello", 4)

my_list.append("Hello")
my_list.append("world!")
p my_list.node
p my_list.size
puts my_list.to_s