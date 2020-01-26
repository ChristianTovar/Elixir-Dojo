defmodule Reverse do
  @spec do_reverse(list(any)) :: list(any)
  def do_reverse(list) when is_list(list) do
    Enum.reduce(list, [], fn x, acc -> [x] ++ acc end)
  end

  def do_reverse(_), do: "wrong data type..."
end
