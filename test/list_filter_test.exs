defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "empty list return 0" do
    list = []
    expected_result = 0
    result = ListFilter.call(list)
    assert result === expected_result
  end

  test "pair list return 0" do
    list = [2, 4, 6, 8]
    expected_result = 0
    result = ListFilter.call(list)
    assert result === expected_result
  end

  test "odd list with 3 elements return 3" do
    list = [3, 5, 7]
    expected_result = 3
    result = ListFilter.call(list)
    assert result === expected_result
  end

  test "mixed list only numbers" do
    list = [1, 2, 3, 4, 5, 6, 7, 8]
    expected_result = 4
    result = ListFilter.call(list)
    assert result === expected_result
  end

  test "mixed list" do
    list = [1, 2, 3, :banana, "teste", 5, 6]
    expected_result = 3
    result = ListFilter.call(list)
    assert result === expected_result
  end
end
