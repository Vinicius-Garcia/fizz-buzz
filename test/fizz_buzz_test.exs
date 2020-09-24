defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_response =
        {:ok,
         [
           1,
           2,
           4,
           :fizz,
           8,
           :fizz,
           :buzz,
           11,
           :fizz,
           13,
           14,
           :fizzbuzz,
           16,
           :fizz,
           19,
           :buzz,
           :fizz,
           22,
           23,
           :fizz
         ]}

      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    test "when a invalid file is provided, returns an error" do
      expected_response = {:error, "Error reading the file enoent"}
      assert FizzBuzz.build("invalid.txt") == expected_response
    end
  end
end
