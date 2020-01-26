defmodule ReverseTest do
  use ExUnit.Case

  test "reverse empty list" do
    assert Reverse.do_reverse([]) === []
  end

  test "reverse positive numbers list" do
    assert Reverse.do_reverse([1, 5, 0, 2, 6]) === [6, 2, 0, 5, 1]
  end

  test "reverse list" do
    assert Reverse.do_reverse([1, -234, 0, 45, -12, -897_353, 4233]) === [
             4233,
             -897_353,
             -12,
             45,
             0,
             -234,
             1
           ]
  end

  test "string input" do
    assert Reverse.do_reverse("1 2 66 888 99") === "wrong data type..."
  end

  test "tuple input" do
    assert Reverse.do_reverse({:ok, 200}) === "wrong data type..."
  end

  test "map input" do
    assert Reverse.do_reverse(%{foo: "bar"}) === "wrong data type..."
  end
end
