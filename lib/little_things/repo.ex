defmodule LittleThings.Repo do
  use Ecto.Repo,
    otp_app: :little_things,
    adapter: Ecto.Adapters.Postgres
end
