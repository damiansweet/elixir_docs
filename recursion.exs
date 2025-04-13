defmodule Math do
  def sum_list([head | tail], acc) do
    # tail is the new list which contains a head & and a tail
    # acc becomes head + itself
    sum_list(tail, head + acc)
  end

  def sum_list([], acc) do
    acc
  end
end

IO.puts(Math.sum_list([1, 2, 3], 0))
IO.puts(Enum.reduce([1, 2, 3], 0, fn x, acc -> x + acc end))
