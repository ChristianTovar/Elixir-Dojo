defmodule MaxTest do
  use ExUnit.Case

  test "max of one element" do
    assert Max.find_max([5]) === 5
  end

  test "max of two elements" do
    assert Max.find_max([1, 20]) === 20
  end

  test "max of multiple elements" do
    assert Max.find_max([3, 5, 6, 20, 30, 4, -1]) === 30
  end
end
