import Config

config :use_md_as_doc, UseMdAsDoc.Repo,
  database: "bark_dev",
  hostname: "localhost",
  username: "nogw",
  password: ""

config :use_md_as_doc, ecto_repos: [UseMdAsDoc.Repo]
