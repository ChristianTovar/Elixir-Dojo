defmodule CountElements do
  def by_reduce(list) do
    list
    |> Enum.reduce(fn _, acc -> acc + 1 end)
  end

  def count(list) do
    recursive(list, 0)
  end

  defp recursive([], acc), do: acc

  defp recursive([_head | tail], acc) do
    recursive(tail, acc + 1)
  end
end
