defmodule FizzBuzzTest do
  use ExUnit.Case

  test "build/1 reads a file" do
    assert {:ok, file} = File.read("numbers.txt")
    expected_result = String.split(file, ",") |> Enum.map(&String.to_integer/1)

    assert FizzBuzz.build("numbers.txt") == expected_result
  end

  test "build/1 returns error when file does not exist" do
    assert FizzBuzz.build("non_existent.txt") == "Error reading the file: enoent"
  end

  test "handle_file_read/1 should return list of integers" do
    assert FizzBuzz.handle_file_read({:ok, "1,2,3"}) == [1, 2, 3]
  end
end

