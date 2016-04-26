defmodule ListOps do
  def count(list) do
    _count(list, 0)
  end

  defp _count([], acc), do: acc
  defp _count([head | tail], acc) do
    _count(tail, acc + 1)
  end

  def reverse(list) do
    _reverse(list, [])
  end

  defp _reverse([], reversed_list), do: reversed_list
  defp _reverse([head | tail], reversed_list) do
    _reverse(tail, [head | reversed_list])
  end

  def map(list, func) do
    _map([], list, func)
  end

  defp _map(mapped_list, [], _func) do
    mapped_list |> reverse
  end

  defp _map(mapped_list, [head | tail], func) do
    [func.(head) | mapped_list]
    |> _map(tail, func)
  end
end
