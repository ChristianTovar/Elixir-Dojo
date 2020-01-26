defmodule Max do
  def find_max(list) do
    get_max(list, 0)
  end

  defp get_max([], acc) ,do: acc
  defp get_max([head | tail], acc) when head >= acc ,do: get_max(tail, head)
  defp get_max([head | tail], acc) when head < acc ,do: get_max(tail, acc)
end


