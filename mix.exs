defmodule PgQuery.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/hydradb/pg_query"
  def project do
    [
      app: :pg_query,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      description: "",
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    %{
      files: ["lib", "native", "mix.exs", "README.md"],
      maintainers: ["Simon Thörnqvist"],
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => @source_url
      }
    }
  end

  defp docs do
    [
      main: "PgQuery",
      source_url: @source_url,
      source_ref: "v#{@version}"
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, "~> 0.22.0"},
      {:jason, "~> 1.2"},
      {:accessible, "~> 0.3.0"},
      {:protobuf, github: "elixir-protobuf/protobuf"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:benchee, "~> 1.0", only: :dev}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
