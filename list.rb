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
    attr_accessor :node

    def initialize
        @node = Node.new
    end
end