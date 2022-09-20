defmodule UseMdAsDoc.Docs.Doc do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:identifier, :string, autogenerate: false}
  schema "docs" do
    field :category, :string
    field :content, :string
    field :index, :integer
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(doc, attrs) do
    doc
    |> cast(attrs, [:identifier, :index, :category, :content, :title])
    |> validate_required([:identifier, :index, :category, :content, :title])
  end
end
