defmodule UseMdAsDoc.Docs do
  import Ecto.Query, warn: false
  alias UseMdAsDoc.Repo
  alias UseMdAsDoc.Docs.Doc

  def create_doc(attrs \\ %{}) do
    %Doc{}
    |> Doc.changeset(attrs)
    |> Repo.insert()
  end
end
