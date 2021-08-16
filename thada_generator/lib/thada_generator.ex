defmodule ThadaGenerator do
  @moduledoc """
  A generator tool to generate common data in Thailand, such as provinces, etc.

  ## Design idea

  The generator is a command-line tool that accept a programming language and generate it
  as module.
  """

  @province_file_path "priv/provinces.json"

  alias ThadaGenerator.Javascript

  def main(_args \\ []) do
    code =
      File.read!(@province_file_path)
      |> Jason.decode!()
      |> Javascript.province()

    File.write!("province.js", code)
  end
end
