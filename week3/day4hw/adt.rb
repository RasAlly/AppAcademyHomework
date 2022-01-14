class Stack
    def initialize
        @curr_stack = Array.new
      # create ivar to store stack here!
    end

    def push(el)
        @curr_stack.push(el)
      # adds an element to the stack
    end

    def pop
        @curr_stack.pop
      # removes one element from the stack
    end

    def peek
        @curr_stack[-1]
      # returns, but doesn't remove, the top element in the stack
    end
  end