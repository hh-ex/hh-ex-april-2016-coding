defmodule ListOps do
  def count([]), do: 0
  def count([head | tail]) do
    1 + count(tail)
  end

  def reverse(list) do
    _reverse(list, [])
  end

  defp _reverse([], reversed_list), do: reversed_list
  defp _reverse([head | tail], reversed_list) do
    _reverse(tail, [head | reversed_list])
  end
end
