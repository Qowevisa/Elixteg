defmodule Elixteg.Mixfile do
  use Mix.Project

  @source_url "https://github.com/qowevisa/elixteg"
  @version "0.7.0"

  def project do
    [
      app: :elixteg,
      version: @version,
      elixir: "~> 1.8",
      package: package(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      preferred_cli_env: [docs: :docs]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 2.1.0"},
      {:jason, "~> 1.4"},
      {:exvcr, "~> 0.13.5", only: [:dev, :test]},
      {:earmark, "~> 1.4", only: :docs},
      {:ex_doc, ">= 0.0.0", only: :docs, runtime: false},
      {:inch_ex, "~> 2.0.0", only: :docs}
    ]
  end

  defp package do
    [
      description: "Telegram Bot API Wrapper written in Elixir",
      maintainers: ["Qowevisa"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/qowevisa/elixteg"}
    ]
  end

  defp docs do
    [
      extras: [
        "LICENSE.md": [title: "License"],
        "README.md": [title: "Overview"]
      ],
      main: "readme",
      source_url: @source_url,
      formatters: ["html"]
    ]
  end
end
