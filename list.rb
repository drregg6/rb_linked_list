###########################################
#                METHODS                  #
###########################################
# append: add new node to the end         #xx
# prepend: add new node to the beginning  #
# size: returns the total number of nodes #xx
# head: returns the first node            #xx
# tail: returns the last node             #xx
# at(i): returns the node at index        #xx
# pop: removes the last element           #
# contains?(el): TRUE if (el) exists      #
# find(el): if TRUE returns index with el #
# to_s: print entire list as string       #xx
#     ( data ) -> ( data ) -> ( data )    #xx
###########################################

class List
    attr_accessor :node, :list
    attr_reader :size, :str

    def initialize
        @list = Array.new
        @length = @list.length
    end



    def append(data)
        @node_index = @list.size
        @list.push(Node.new(data))
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

    def at(index)
        if (@list.at(index) == nil)
            return "no such index"
        else
            @list[index].node[:data]
        end
    end

    def head
        @list.first.node[:data]
    end

    def tail
        @list.last.node[:data]
    end
end