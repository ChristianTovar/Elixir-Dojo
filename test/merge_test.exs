defmodule MergeTest do
  use ExUnit.Case

  test "zero elements" do
    assert Merge.sort([]) === []
  end

  test "single element" do
    assert Merge.sort([321]) === [321]
  end

  test "sort positive integers" do
    assert Merge.sort([3, 5, 6, 20, 30, 4, 2001]) === [3, 4, 5, 6, 20, 30, 2001]
  end

  test "sort negative numbers" do
    assert Merge.sort([-34, -45, -1, -6, -100, -21]) === [-100, -45, -34, -21, -6, -1]
  end

  test "mixed numbers" do
    assert Merge.sort([-69, 0, 40, -100, 2, 21, -45, 7, 3]) === [
             -100,
             -69,
             -45,
             0,
             2,
             3,
             7,
             21,
             40
           ]
  end
end
