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

  def reduce(list, acc, step_fun)
  def reduce([h | tail], acc, step_fun) do
    reduce(tail, step_fun.(h,acc), step_fun)
  end
  def reduce([], acc, _step_fun) do
    acc
  end
end
