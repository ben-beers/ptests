defmodule Ptests.Repo do
  use Ecto.Repo,
    otp_app: :ptests,
    adapter: Ecto.Adapters.Postgres
end
