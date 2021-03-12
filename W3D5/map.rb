require 'byebug'

class Map

    def initialize
        @map = []
    end

    def set(key,value)
     @map << [key,value] if @map.empty?
        @map.each do |pair| 
          if  pair.first == key 
             pair[1] = value 
          else 
             @map << [key,value]
          end
        end

    end

    def get(key)
        @map.each do |pair| 
             if pair.first == key 
                return pair.last
             else 
                 raise "key is not found"
             end
        end 
    end

    def delete(key)
        @map.each {|pair| @map.delete(pair) if pair.first == key}
    end

    def show 
        @map 
    end


end
