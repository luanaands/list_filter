defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "count list elements impares de uma lista que pode conter string" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
      list2 = ["1", "43", "banana", "6", "abc", "ceu", "maça"]
      list3 = ["6", "8", "casa"]

      assert ListFilter.call(list1) == 3
      assert ListFilter.call(list2) == 2
      assert ListFilter.call(list3) == 0
    end

    test "passing an empty list" do
      list = []

      assert ListFilter.call(list) == 0
    end
  end
end
