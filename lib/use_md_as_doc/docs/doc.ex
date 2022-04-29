defmodule UseMdAsDoc.Docs.Doc do
  use Ecto.Schema

  @primary_key {:identifier, :string, autogenerate: false}
  schema "docs" do
    field :index, :integer
    field :category, :string
    field :content, :string
    field :title, :string
  end

  def changeset(doc, params \\ %{}) do
    doc
    |> Ecto.Changeset.cast(params, [:identifier, :index, :title, :category, :content])
    |> Ecto.Changeset.validate_required([:identifier, :index, :title, :category, :content])
  end
end
