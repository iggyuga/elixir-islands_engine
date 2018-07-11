defmodule IslandsEngine.Coordinate do
	@moduledoc """
	A coordinate locates positions in the board game islands
	"""
	# This allows us to reference %Coordinate{} instead of %IslandsEngine.Coordinate {}
	alias __MODULE__
	@board_range 1..10
	@enforce_keys [:row, :col]
	defstruct [:row, :col]


	def new(row,col) when row in(@board_range) and col in(@board_range) do
		{:ok, %Coordinate{row: row, col: col}}
	end

	def new(_row,_col), do: {:error, :invalid_coordinate}
end

