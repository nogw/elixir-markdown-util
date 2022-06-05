defmodule UseMdAsDoc.Repo.Migrations.CreateDocs do
  use Ecto.Migration

  def change do
    create table(:docs, primary_key: false) do
      add :identifier, :text, null: false, primary_key: true
      add :index, :integer, null: false
      add :title, :string, null: false
      add :category, :string, null: false
      add :content, :text, null: false

      timestamps()
    end
  end
end
