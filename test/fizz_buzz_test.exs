defmodule FizzBuzzTest do
  use ExUnit.Case

  test "build/1 reads a file" do
    assert {:ok, expected_result} = File.read("numbers.txt")
    assert FizzBuzz.build("numbers.txt") == expected_result
  end

  test "build/1 returns error when file does not exist" do
    assert reason = FizzBuzz.build("non_existent.txt")
    assert reason == :enoent
  end
end

