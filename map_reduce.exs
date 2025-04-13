products = [
  %{name: "Book", price: 12.99},
  %{name: "Pen", price: 1.50},
  %{name: "Notebook", price: 5.25}
]

products_with_tax =
  Enum.map(products, fn product ->
    Map.update!(product, :price, fn price -> Float.round(price * 1.10, 2) end)
  end)

total_cost = Enum.reduce(products_with_tax, 0.0, fn product, acc -> acc + product.price end)

book_map = Enum.filter(products, fn x -> x.name == "Book" end) |> List.first()
IO.inspect(book_map)
IO.inspect(products_with_tax)
IO.puts("Total cost (with tax): $#{total_cost}")
