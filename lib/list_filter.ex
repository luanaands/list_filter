defmodule ListFilter do
  def call(list) do
    list2 = getListInter(list)
    Enum.count(list2, fn x -> rem(x, 2) != 0 end)
  end

  defp getListInter(list) do
    Enum.flat_map(list, fn string ->
      case Integer.parse(string) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
  end
end
