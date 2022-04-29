defmodule UseMdAsDoc.GetContent do
  alias UseMdAsDoc.Repo
  alias UseMdAsDoc.Docs.Doc

  def removeAllDocs() do
    Repo.delete_all(Doc)
  end

  def insertDocs(files) do
    Repo.insert_all(
      Doc,
      files,
      on_conflict: :replace_all,
      conflict_target: :identifier
    )
  end

  def mapToKeyword({:ok, {:ok, data} = _, content} = _) do
    Map.put(data, "content", content)
    |> Keyword.new(fn {k, v} -> {String.to_existing_atom(k), v} end)
  end

  def getFiles do
    Path.absname("docs/*.md")
    |> Path.wildcard()
    |> Enum.map(&Path.relative_to_cwd/1)
  end

  def parseMatter do
    getFiles()
    |> Enum.map(fn file -> file |> YamlFrontMatter.parse_file() |> mapToKeyword() end)
    |> insertDocs()
  end
end
