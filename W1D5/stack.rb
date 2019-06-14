class Stack

    attr_reader :arr

    def initialize
        @arr = []
    end

    def push(el)
        @arr.push(el)
        el
    end

    def pop
        @arr.pop
    end

    def peek
        @arr.last
    end

end

class Queue

    attr_reader :queue
    def initialize
        @queue = []
    end

    def enqueue
        @queue.push(el)
        el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue.first
    end

end

class Map

    attr_reader :arr

    def initialize
        @arr = []
    end

    def set(k, v)
        i = 0
        until @arr[i][0] != k || i == @arr.length
            i += 1
        end
        if i != @arr.length
            @arr[i][1] = value
        else
            @arr.push([k, v])
        end
        value
    end

    def get(k)
        @arr.each { |sub| return sub[1] if sub[0] == key }
        nil
    end

    def delete(k)
        v = get(k)
        @arr.reject! { |sub| sub[0] == key }
        v
    end

    def show
        @arr.map { |el| el.is_a?(Array) ? el.dup : el }
    end

end

