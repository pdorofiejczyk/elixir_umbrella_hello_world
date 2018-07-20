defmodule Hello.MixProject do
  use Mix.Project

  def project do
    [
      app: :hello,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      erlc_options: [
        :debug_info,
        {:i, "../../deps/fast_xml/include"},
        {:i, "../../deps/p1_utils/include"},
        {:i, "../../deps/xmpp/include"},
        {:i, "../../deps/exml/include"}
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Hello.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ejabberd, "18.4.0"},
      {:xmpp, "1.1.21"},
      {:fast_tls, "1.0.22"},
      {:fast_xml, "1.1.30"},
      {:p1_utils, "1.0.11"}
    ]
  end
end
