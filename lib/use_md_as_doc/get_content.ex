defmodule UseMdAsDoc.GetContent do
  alias UseMdAsDoc.Repo
  alias UseMdAsDoc.Docs.Doc

  def removeAllDocs() do
    Repo.delete_all(Doc)
  end

  def create_doc(attrs \\ %{}) do
    %Doc{}
    |> Doc.changeset(attrs)
    |> IO.inspect()

    # |> Repo.insert()
  end

  def getFiles do
    Path.absname("docs/*.md")
    |> Path.wildcard()
    |> Enum.map(&Path.relative_to_cwd/1)
  end

  def mapToKeyword({:ok, {:ok, data} = _, content} = _) do
    Map.put(data, "content", content)
    |> Map.new(fn {k, v} -> {String.to_existing_atom(k), v} end)
  end

  def insertDocs(docs) do
    changesets =
      Enum.map(docs, fn doc ->
        Doc.changeset(%Doc{}, doc)
      end)

    Repo.transaction(fn ->
      Enum.each(
        changesets,
        &Repo.insert(
          &1,
          on_conflict: :replace_all,
          conflict_target: :identifier,
          returning: true
        )
      )
    end)
  end

  def parseMatter do
    getFiles()
    |> Enum.map(fn file -> file |> YamlFrontMatter.parse_file() |> mapToKeyword() end)
    |> insertDocs()
  end

  # IO.inspect(changesets)

  # Repo.insert_all(
  #   Doc,
  #   changesets,
  #   on_conflict: :replace_all,
  #   conflict_target: :identifier
  # )
end
