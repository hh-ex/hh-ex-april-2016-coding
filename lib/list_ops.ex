defmodule ListOps do
  def count(list) do
    reduce(list, 0, fn(_x,acc) -> acc + 1 end)
  end

  def reduce(list, acc, step_fun)
  def reduce([h | tail], acc, step_fun) do
    reduce(tail, step_fun.(h,acc), step_fun)
  end
  def reduce([], acc, _step_fun) do
    acc
  end
end
