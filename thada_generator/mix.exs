defmodule ThadaGenerator.MixProject do
  use Mix.Project

  def project do
    [
      app: :thada_generator,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :eex]
    ]
  end

  defp deps do
    [
      {:jason, "~> 1.2"}
    ]
  end
end
