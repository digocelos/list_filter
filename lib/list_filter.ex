defmodule ListFilter do
  def call(list), do: countNumbers(list)

  defp countNumbers(list) do
    list
    |> Enum.filter(fn x -> is_number(x) end)
    |> Enum.filter(fn x -> rem(x, 2) == 1 end)
    |> Enum.count()
  end
end
