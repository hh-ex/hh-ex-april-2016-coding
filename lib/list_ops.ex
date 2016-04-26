defmodule ListOps do
  def count([]) do
    0
  end

  def count([_ | rest]) do
    do_count(rest, 1)
  end

  defp do_count([], accu) do
    accu
  end

  defp do_count([_ | rest], accu) do
    do_count(rest, accu + 1)
  end

  def reverse(list) do
    do_reverse(list, [])
  end

  defp do_reverse([], accu) do
    accu
  end

  defp do_reverse([head | rest], accu) do
    do_reverse(rest, [head | accu])
  end

  def map([], function) do
    []
  end

  def map(list, function) do
    do_map(list, function, [])
  end

  def do_map([], function, accu) do
    reverse(accu)
  end

  def do_map([head | tail], function, accu) do
    do_map(tail, function, [function.(head) | accu])
  end
end
