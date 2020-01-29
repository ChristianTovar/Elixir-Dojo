defmodule Merge do
  def sort([]), do: []
  def sort([value]), do: [value]

  def sort(list) do
    {left, right} = divide_list(list)

    a = sort(left)
    b = sort(right)

    merge(a, b)
  end

  defp merge([left], [right]) when left < right, do: [left, right]
  defp merge([left], [right]) when left >= right, do: [right, left]

  defp merge([left_head | left_tail], [right_head | _right_tail] = right)
       when left_head < right_head do
    [left_head | merge(left_tail, right)]
  end

  defp merge([left_head | _left_tail] = left, [right_head | right_tail])
       when left_head >= right_head do
    [right_head | merge(left, right_tail)]
  end

  defp merge([left_head | left_tail], []) do
    [new_left | new_right] = left_tail
    [left_head | merge(new_left, new_right)]
  end

  defp merge([], [right_head | right_tail]) do
    [new_left | new_right] = right_tail
    [right_head | merge(new_left, new_right)]
  end

  defp merge(left, []) , do: [left]
  defp merge([], right) , do: [right]

  defp merge(left, right) when left < right, do: [left, right]
  defp merge(left, right) when left >= right, do: [right, left]

  def divide_list(list) do
    size =
      list
      |> length()
      |> div(2)

    Enum.split(list, size)
  end
end
