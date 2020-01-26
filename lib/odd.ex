defmodule Odd do
  def add(list) when is_list(list) do
    list
    |> Stream.filter(fn x -> rem(x, 2) != 0 end)
    |> Enum.reduce(0, fn x, acc -> acc + x end)
  end

  def add(_), do: "error 🤷🏻‍♂️ ..."
end
