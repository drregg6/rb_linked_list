require './list'
require './node'

my_list = List.new

# my_list.append(
# {
#     :name=>"Dave",
#     :age=>24,
#     :occupation=>"Realtor"
# })
my_list.append("Hello")
my_list.append("world!")
p my_list.node
p my_list.size
puts my_list.to_s
puts my_list.at(1)
puts my_list.at(4)