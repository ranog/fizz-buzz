defmodule FizzBuzz do
  def build(file_name) do
    File.read(file_name) |> handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    String.split(result, ",") |> Enum.map(&String.to_integer/1)
  end

  def handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"
end

