
require 'set'
class GraphNode
    attr_accessor :neighbors, :value 
    def initialize(value)
        @value = value
        @neighbors = [] 
    end

    def add_neighbor(neighbor)
        self.neighbors << neighbor

    end

    
end
def bfs(starting_node, target_value)
    visited = Set.new()
    queue = [starting_node]
    while !queue.empty?
        node = queue.shift 
        if !visited.include?(node)
            return node.value  if node.value == target_value
            visited.add(node)
            queue += node.neighbors
        end
    end
    
    nil
end