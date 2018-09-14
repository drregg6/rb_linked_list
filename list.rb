###########################################
#                METHODS                  #
###########################################
# append: add new node to the end         #
# prepend: add new node to the beginning  #
# size: returns the total number of nodes #
# head: returns the first node            #
# tail: returns the last node             #
# at(i): returns the node at index        #
# pop: removes the last element           #
# contains?(el): TRUE if (el) exists      #
# find(el): if TRUE returns index with el #
# to_s: print entire list as string       #
#     ( data ) -> ( data ) -> ( data )    #
###########################################

class List
    attr_accessor :node, :list
    attr_reader :size, :str

    def initialize
        @list = Array.new
        @length = @list.length
    end

    def create_node(data=nil, pointer=nil)
        @node = Node.new(data, pointer)
    end

    def append(data)
        @node_index = @list.size
        @node = Node.new(data)
        @list.push(@node)
        @list[@node_index].node[:pointer] = @node_index


        p @list
    end

    def size
        @size = @list.length
    end

    def to_s
        @str = ""

        @list.each_with_index do |node, i|
            if i == (@list.length - 1)
                @str += "( #{node.node[:data]} ) -> nil"
            else
                @str += "(  #{node.node[:data]} ) -> "
            end
        end
        @str
    end
end