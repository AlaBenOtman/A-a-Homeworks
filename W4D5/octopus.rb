
def quard_fish(arr)
    max = ""
    arr.each_with_index do |fish,idx|
        arr.each_with_index do |fish1,j|
            max = fish1 if fish.length < fish1.length && idx != j 
        end
    end
    max
end

class Array
    def merge_sort(&prc)
        prc ||= Proc.new { |x, y| x.length <=> y.length }
        
        return self if count <= 1
  
        midpoint = count / 2
        sorted_left = self.take(midpoint).merge_sort(&prc)
        sorted_right = self.drop(midpoint).merge_sort(&prc)
        
        Array.merge(sorted_left, sorted_right, &prc)
    end
    
    private
    def self.merge(left, right, &prc)
        merged = []
        
        until left.empty? || right.empty?
            case prc.call(left.first, right.first)
        when -1
            merged << left.shift
        when 0
            merged << left.shift
        when 1
            merged << right.shift
        end
      end
      
      merged.concat(left)
      merged.concat(right)
      
      merged
    end
end

def linear_fish(arr) 
    arr.inject(arr[0]){|acc,fish| fish.length > acc.length ? fish : acc }
end


def linear_dance(tile,tiles_arr)
    tiles_arr.each_with_index {|ele,i| return i if tile == ele  }
    nil
end


def constant_dance(tile,tiles_arr)
    tiles_arr.index(tile)
end