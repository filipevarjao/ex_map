defmodule ExMap.MapTest do
  use ExUnit.Case

  test "create a new empty map" do
    assert ExMap.Map.new() == %{}
  end

  test "creates a map from an enumerable" do
    assert ExMap.Map.new([{:b, 1}, {:a, 2}]) == %{a: 2, b: 1}
    assert ExMap.Map.new(a: 1, a: 2, a: 3) == %{a: 3}
  end

  test "creates a map from an enumerable via the given transformation function" do
    assert ExMap.Map.new([:a, :b], fn x -> {x, x} end) == %{a: :a, b: :b}
  end
end
