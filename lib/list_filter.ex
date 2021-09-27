defmodule ListFilter do
  def call(list), do: filter_list(list)

  defp filter_list(list) do
    Enum.count(filter_numbers(list), fn number -> rem(number, 2) != 0 end)
  end

  defp filter_numbers(list) do
    Enum.flat_map(list, fn list ->
      case Integer.parse(list) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
  end
end
