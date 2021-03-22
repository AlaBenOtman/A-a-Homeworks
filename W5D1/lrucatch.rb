class LRUCache
    def initialize(size)
        @size = size
        @catch = []
    end

    def count
      @catch.length
    end

    def add(el)
      if @catch.include?(el)
        @catch.delete(el)
        @cache << el
      elsif count >= @size 
        @catch.shift 
        @catch << el 
      else 
        @catch << el 
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      @catch 
    end


  end