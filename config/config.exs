import Config

if config_env() == :test do
  config :elixir, :time_zone_database, Tzdata.TimeZoneDatabase

  config :pg_ranges, PgRanges.Repo,
    username: "postgres",
    password: "postgres",
    database: "pg_ranges",
    hostname: "localhost",
    pool_size: 10,
    pool: Ecto.Adapters.SQL.Sandbox

  config :pg_ranges, ecto_repos: [PgRanges.Repo]

  config :logger, level: :warn
end
