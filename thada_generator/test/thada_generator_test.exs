defmodule ThadaGeneratorTest do
  use ExUnit.Case
  doctest ThadaGenerator

  test "greets the world" do
    assert ThadaGenerator.hello() == :world
  end
end
