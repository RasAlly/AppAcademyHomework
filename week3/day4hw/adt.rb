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

class Queue

    def initialize
        @curr_queue = Array.new
    end

    def enqueue(el)
        @curr_queue << el
    end

    def dequeue
        @curr_queue.shift
    end

    def peek
        @curr_queue[-1]
    end
end

class Map

    def initialize
        @curr_map = Array.new
    end

    def set(key, val)
        # if @curr_map.none?{ |subarr| subarr.include?(key) }
             @curr_map << [key, val]
        # end
    end

    def get(key)
        @curr_map.each { |subarr| return "#{key}=>#{subarr[1]}" if subarr[0] == key  }
    end

    def delete(key)
      @curr_map.each_with_index do |subarr, i|
        if subarr.include?(key)
            @curr_map.delete_at(i)
        end
      end
    end

    def show
        @curr_map.each do |subarr|
            puts "#{subarr[0]}=>#{subarr[1]}"
        end
    end
end

map = Map.new
p map.set('key_one', 'val_one')
p map.set('key_two', 'val_two')
p map.set('key_three', 'val_three')
# p map.get('key_two')
p map.delete('key_two')
p map.show