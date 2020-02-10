defmodule Quick do
  def sort([value]), do: [value]
  def sort([]), do: []

  def sort([pivot | tail]) do
    {left, right} = Enum.split_with(tail, fn value -> value < pivot end)
    sort(left) ++ [pivot] ++ sort(right)
  end
end
