defmodule Readwriteapp.Mixfile do
  use Mix.Project

  def project do
    [ app: :readwriteapp,
      version: "0.0.1",
      elixir: "~> 0.10.4-dev",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [mod: { Readwriteapp, [] }]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    []
  end
end
