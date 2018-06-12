# This allows us to reference %Coordinate{} instead of %IslandsEngine.Coordinate {}



defmodule IslandsEngine.Coordinate do
@enforce_keys [:row, :col]
defstruct [:row, :col]
@board_range 1..10
	alias __MODULE__
	def new(row,col) when row in(@board_range) and col in(@board_range) do
		{:ok, %Coordinate{row: row, col: col}}
	end

	def new(_row,_col), do: {:error, :invalid_coordinate}
end

