defmodule MyApp.Repo do
  use Ecto.Repo,
    otp_app: :dj_api,
    adapter: Ecto.Adapters.Postgres
end
