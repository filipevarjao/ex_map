defmodule ExMap.Map do

  @spec new :: map()
  def new, do: %{}

  @spec new(Enumerable.t()) :: map()
  def new(enum), do: Map.new(enum)

  @spec new(Enumerable.t(), term()) :: map()
  def new(enum, fun), do: Map.new(enum, fun)
end
