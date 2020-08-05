defmodule LittleThings.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      LittleThings.Repo,
      # Start the Telemetry supervisor
      LittleThingsWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: LittleThings.PubSub},
      # Start the Endpoint (http/https)
      LittleThingsWeb.Endpoint
      # Start a worker by calling: LittleThings.Worker.start_link(arg)
      # {LittleThings.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: LittleThings.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    LittleThingsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
