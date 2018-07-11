defmodule IslandsEngine.Island do
	@moduledoc """
	An Island represents the structures "boats" or "islands" that a player can put
	on the board which consist of coordinates
	"""
	alias IslandsEngine.{Coordinate, Island}

	@enforce_keys [:coordinates, :hit_coordinates]
	defstruct [:coordinates, :hit_coordinates]

	def new() do
		%Island{coordinates: MapSet.new, hit_coordinates: MapSet.new}
	end

	"""
	Create offsets templates to determine the coordinates of islands
	"""
	defp offsets(:square), do: [{0,0}, {0,1}, {1,0}, {1,1}]
	defp offsets(:atoll), do: [{0,0}, {0,1}, {1,1}, {2,0}, {2,2}]
	defp offsets(:dot), do: [{0,0}]
	defp offsets(:l_shape), do: [{0,0}, {1,0}, {2,0}, {2,1}]
	defp offsets(:s_shape), do: [{0,1}, {0,2}, {1,0}, {1,1}]
	defp offsets(_anyshape), do: {:error, :invalid_island_type}

end