defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "should return a converted list when a valid file is provided" do
      expected_result =
        {:ok,
         [
           1,
           2,
           "fizz",
           4,
           "buzz",
           "buzz",
           11,
           "fizz",
           13,
           14,
           "fizzbuzz",
           "buzz",
           "fizz",
           23,
           "fizz",
           "buzz"
         ]}

      assert FizzBuzz.build("numbers.txt") == expected_result
    end

    test "should return error when invalid file is provided" do
      assert FizzBuzz.build("invalid_file.txt") == {:error, "Error reading the file: enoent"}
    end
  end
end
