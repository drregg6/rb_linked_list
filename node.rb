###########################################
#                 METHODS                 #
###########################################
# create: NODE to be inserted into list   #
# is_tail?: checks if NEXT -> NULL        #
# contains?(el): TRUE if (el) exists      #
# contains?(el): TRUE if (el) exists      #
# contains?(el): TRUE if (el) exists      #
# contains?(el): TRUE if (el) exists      #
# contains?(el): TRUE if (el) exists      #
###########################################

class Node
    attr_accessor :data

    def initialize
        self.create
    end

    def create(data=nil)
        @data = data
    end
end