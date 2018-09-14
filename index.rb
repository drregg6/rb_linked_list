require './list'
require './node'

my_list = List.new
my_node = Node.new

puts my_list.node
my_list.node.data = "Hello world!"
puts my_list.node.data