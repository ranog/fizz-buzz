defmodule FizzBuzzTest do
  use ExUnit.Case

  test "build/1 reads a file" do
    assert {:ok, file} = File.read("numbers.txt")
    assert FizzBuzz.build("numbers.txt") == file
  end

  test "build/1 returns error when file does not exist" do
    assert reason = FizzBuzz.build("non_existent.txt")
    assert reason == :enoent
  end
end

