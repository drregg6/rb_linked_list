###########################################
#                METHODS                  #
###########################################
# append: add new node to the end         #xx
# prepend: add new node to the beginning  #xx
# size: returns the total number of nodes #xx
# head: returns the first node            #xx
# tail: returns the last node             #xx
# at(i): returns the node at index        #xx
# pop: removes the last element           #xx
# contains?(el): TRUE if (el) exists      #xx
# find(el): if TRUE returns index with el #xx
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


# append pointers should always be pointing to nil
# the previous pointer should then point to the new node
    def append(data)
        @list.push(Node.new(data))

        if @list.size > 1
            @list[-2].node[:pointer] = @list.size - 1
        end

        @list
    end


    def prepend(data)
        @list.unshift(Node.new(data, 1))

        @list.drop(1).each do |node|
            node.node[:pointer] = (node.node[:pointer] + 1) if node.node[:pointer] != nil
        end

        @list
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


    def pop
        @list.pop
        @list.last.node[:pointer] = nil

        @list
    end


    def exists?(el)
        @list.each do |node|
            if node.node[:data] == el
                return true
            end
        end

        return false
    end

    def find(el)
        @list.each_with_index do |node, i|
            if node.node[:data] == el
                return i
            end
        end
        return false
    end
end