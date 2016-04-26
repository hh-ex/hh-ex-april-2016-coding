defmodule ListOps do
  def count(list) do
    reduce(list, 0, fn(_x,acc) -> acc + 1 end)
  end

  def reverse(list) do
    reduce(list, [], fn(x, acc) -> [x | acc] end)
  end

  def map(list, mapper) do
    list
      |> reduce([], fn(x, acc) -> [mapper.(x) | acc] end)
      |> reverse
  end

  def filter(list, filter_fun) do
    reduce(list, [], fn(x, acc) ->
      if filter_fun.(x), do: [x | acc], else: acc
    end) |> reverse
  end

  def append(list, other) do
    list
      |> reverse
      |> reduce(other, fn(x, acc) -> [x | acc] end)
  end

  def concat(list_of_lists) do
    reduce(list_of_lists, [], fn(x, acc) ->
      reduce(x, acc, fn(y, acc2) ->
        [y | acc2]
      end)
    end) |> reverse
  end

  def reduce(list, acc, step_fun)
  def reduce([h | tail], acc, step_fun) do
    reduce(tail, step_fun.(h,acc), step_fun)
  end
  def reduce([], acc, _step_fun) do
    acc
  end
end
