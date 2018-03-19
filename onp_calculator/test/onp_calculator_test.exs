defmodule OnpCalculatorTest do
  use ExUnit.Case
  doctest OnpCalculator

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "result" do
    assert OnpCalculator.onp([2,3, "+", 8, "-"],[]) == -3
  end

  test "failure" do
      assert OnpCalculator.onp([2,3, "+", 8, "-"],[]) == 3
    end
end



