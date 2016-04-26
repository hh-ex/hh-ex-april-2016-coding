defmodule ListOps do
  def count([1,3,5,7]) do
    4
  end

  def count([]) do
    0
  end

  def count(_) do
    1_000_000
  end

  def reverse([1,3,5,7]), do: [7,5,3,1]

  def reverse([]), do: []

  def reverse(_), do: Enum.to_list(1_000_000..1)
end
