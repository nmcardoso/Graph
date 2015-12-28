#!/usr/bin/ruby
class Digraph
	def initialize()
		@adjacency = Hash.new {|h,k| h[k]=[]}
	end

	def to_s()
		@adjacency.to_s()
	end

	def add_vertex=(vertex)
		@adjacency[vertex] = []
	end

	def add_edge=(origin, destination)
		@adjacency[origin] << destination
	end

	def rem_vertex=(vertex)
		@adjacency.delete(vertex)
	end

	def rem_edge=(origin, destination)
		@adjacency[origin].delete(destination)
	end

	def contain_vertex?(vertex)
		return @adjacency.has_value?(vertex)
	end

	def contain_edge?(origin, destination)
		return @adjacency.has_value?(origin) and @adjacency[origin].include?(destination)
	end

	def get_vertex()
		return @adjacency.keys()
	end

	# Algorithms

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

		return result
	end

	def DFS(origin)
	end

end

g = Digraph.new
g.add_vertex=("A")
g.add_vertex=("B")
g.add_vertex=("C")
g.add_vertex=("D")
puts(g)
g.add_edge=("A", "B")
puts(g)
g.add_edge=("B", "C")
puts(g)
