#!/usr/bin/ruby
class Graph
	''' This class represents a generic graph '''

	def initialize()
		@adjacency = Hash.new {|h, k| h[k] = []}
	end

	def to_s()
		return @adjacency.to_s()
	end

	def add_vertex(vertex)
		@adjacency[vertex] = []
	end

	def add_edge(v1, v2)
		@adjacency[v1] << v2
		@adjacency[v2] << v1
	end

	def rem_vertex(vertex)
		@adjacency.delete(vertex)
	end

	def rem_edge(v1, v2)
		@adjacency[v1].delete(v2)
		@adjacency[v2].delete(v1)
	end

	def get_vertex()
		return @adjacency.keys()
	end

	def contain_vertex?(vertex)
		return @adjacency.has_value?(vertex)
	end

	def contain_edge?(v1, v2)
		@adjacency.has_value?(v1) and @adjacency[v1].include?(v2)
	end

	def has_loop?()
		has = false

		@adjacency.each do |h, k|
			has = k.include?(h)
			break if has
		end

		return has
	end
end