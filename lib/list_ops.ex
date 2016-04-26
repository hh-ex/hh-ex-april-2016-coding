defmodule ListOps do

  def count(list), do: do_count(list, 0)

  def do_count([head|tail], count), do: do_count(tail, count + 1)
  def do_count([], count), do: count


  def reverse(list), do: do_reverse(list, [])

  def do_reverse([head|tail], result), do: do_reverse(tail, [head|result])
  def do_reverse([], result), do: result


  def map(list, function), do: do_map(list, function, [])

  def do_map([head|tail], function, result), do: do_map(tail, function, [function.(head)|result])
  def do_map([], _, result), do: reverse(result)


  def filter(list, function), do: do_filter(list, function, [])

  def do_filter([head|tail], function, result) do
    if function.(head) do
      do_filter(tail, function, [head|result])
    else
      do_filter(tail, function, result)
    end
  end
  def do_filter([], _function, result), do: reverse(result)


  def reduce(list, initial, function), do: do_reduce(list, initial, function)

  def do_reduce([head|tail], memo, function), do: do_reduce(tail, function.(head,memo), function)
  def do_reduce([], memo, _function), do: memo


  def append(list1, list2), do: do_append(list1, list2, [])

  def do_append([head|tail], list2, result), do: do_append(tail, list2, [head|result])
  def do_append([], [head|tail], result), do: do_append([], tail, [head|result])
  def do_append([], [], result), do: reverse(result)


  def concat(lists), do: do_concat(lists, [])

  def do_concat([[head|tail]|tail2], result), do: do_concat([tail|tail2], [head|result])
  def do_concat([[],[head|tail]|tail2], result), do: do_concat([tail|tail2], [head|result])
  def do_concat([[]|tail2], result), do: do_concat(tail2, result)
  def do_concat([], result), do: reverse(result)


end
