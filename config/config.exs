import Config

config :use_md_as_doc, UseMdAsDoc.Repo,
  database: "use_md_as_doc_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :use_md_as_doc, ecto_repos: [UseMdAsDoc.Repo]
