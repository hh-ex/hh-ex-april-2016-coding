defmodule ListOps do
  def count(list) do

  end

  def reduce(list, acc, step_fun)
  def reduce([h | tail], acc, step_fun) do
    reduce(tail, step_fun.(h,acc), step_fun)
  end
  def reduce([], acc, _step_fun) do
    acc
  end
end
