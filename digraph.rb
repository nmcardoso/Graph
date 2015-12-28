#!/usr/bin/ruby
require_relative 'graph'

class Digraph < Graph
	''' This class represents a directed graph '''

	def add_edge(origin, destination)
		# Overload of the base class implementation
		# optimized to digraph
		@adjacency[origin] << destination
	end

	def rem_edge(origin, destination)
		# Overload of the base class implementation
		# optimized to digraph
		@adjacency[origin].delete(destination)
	end

	def BFS(origin)
		q = Queue.new()
		q.push(origin)
		result = []

		until q.empty?() do
			atual_vertex = q.pop()
			adj = @adjacency[atual_vertex]

			adj.each do |v|
				if !result.include?(v)
					result << v
					q.push(v)
				end
			end
		end
		return result
	end
end

g = Digraph.new
g.add_vertex("A")
g.add_vertex("B")
g.add_vertex("C")
g.add_vertex("D")
puts(g)
g.add_edge("A", "B")
puts(g)
g.add_edge("B", "C")
g.add_edge("D", "A")
g.add_edge("D", "D")
puts(g)
puts(g.has_loop?())
