defmodule HelloWorld.Repo do
  use Ecto.Repo,
    otp_app: :helloWorld,
    adapter: Ecto.Adapters.Postgres
end
