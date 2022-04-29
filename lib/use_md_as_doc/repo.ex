defmodule UseMdAsDoc.Repo do
  use Ecto.Repo,
    otp_app: :use_md_as_doc,
    adapter: Ecto.Adapters.Postgres
end
