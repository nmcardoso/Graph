#!/usr/bin/python
import queue

class Digraph:
	'''
	This class represents a directed graph (or digraph)
	'''

	# Base Methods

	def __init__:
		adjacency = {} # representing this graph with a dictionary

	def __str__(self):
		return str(self.adjacency)

	def add_vertex(self, vertex):
		self.adjacency[vertex] = []

	def add_edge(self, origin, destination):
		self.adjacency[origin].append(destination)

	def rem_vertex(self, vertex):
		del self.adjacency[vertex]

	def rem_edge(self, origin, destination):
		self.adjacency[vertex].remove(destination)

	def contain_vertex(self, vertex):
		return vertex in self.adjacency

	def contain_edge(self, origin, destination):
		return origin in self.adjacency and destination in self.adjacency[origin]

	def get_vertex(self):
		return self.adjacency.keys()

	# Algorithms

	def BFS(self, origin):
		q = queue.Queue()
		q.put(origin)
		result = []

		while(not q.empty()):
			atual_vertex = q.get()
			adj = self.adjacency[atual_vertex]

			for v in adj:
				if not v in result:
					result.append(v)
					q.put(v)

		return result

	def DFS(self, origin):
		return 0

	def Prim(self):
		return 0

	def Dijkstra(self):
		return 0

	def Kruskal(self):
		return 0

	def topological_sort(self):
		return 0


# Test
grafo = Digraph()
grafo.add_vertex("A")
grafo.add_vertex("B")
grafo.add_vertex("C")
grafo.add_vertex("D")
grafo.add_edge("A", "B")
grafo.add_edge("B", "C")
print(grafo)
print(grafo.contain_vertex("A"))
print(grafo.contain_edge("B", "A"))
print(grafo.BFS("A"))
