defmodule FizzBuzz do
  def build(file_name) do
    File.read(file_name) |> handle_file_read()
  end

  defp handle_file_read({:ok, result}) do
    response = String.split(result, ",") |> Enum.map(&convert_numbers/1)
    {:ok, response}
  end

  defp handle_file_read({:error, reason}), do: {:error, "Error reading the file: #{reason}"}

  defp convert_numbers(number) do
    String.to_integer(number) |> evaluate_numbers()
  end

  defp evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: "fizzbuzz"
  defp evaluate_numbers(number) when rem(number, 3) == 0, do: "fizz"
  defp evaluate_numbers(number) when rem(number, 5) == 0, do: "buzz"
  defp evaluate_numbers(number), do: number
end
