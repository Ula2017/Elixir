defmodule OnpCalculator.Mixfile do
  use Mix.Project

  def project do
    [app: :onp_calculator,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: twoaliases(),
     deps: deps()
     ]
  end

  defp twoaliases do
          [c: "compile",
           elixir: &elixir/1]
        end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
      []
    end

   defp elixir(_) do
        Mix.shell.info "Elixir 2017"
   end
end


