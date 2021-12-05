defmodule Tracker.Repo do
  use Ecto.Repo,
    otp_app: :Tracker,
    adapter: Ecto.Adapters.Postgres
end
