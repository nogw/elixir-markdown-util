defmodule UseMdAsDoc.Docs do
  import Ecto.Query, warn: false
  alias UseMdAsDoc.Repo

  alias UseMdAsDoc.Docs.Doc

  def list_docs do
    Repo.all(Doc)
  end

  # def aux([head | tail], acc) do
  #   case head do
  #     %{category: category, identifier: identifier, title: title} = _ ->
  #       case Map.fetch(acc, category) do
  #         {:ok, %{^category => list}} ->
  #           %{acc | category => list |> Enum.concat([%{identifier: identifier, title: title}])}
  #           |> (fn v -> aux(tail, v) end).()
  #         _ ->
  #           acc |> Map.put(category, [%{identifier: identifier, title: title}])
  #           |> (fn v -> aux(tail, v) end).()
  #       end
  #   end
  # end

  def aux(docs) do
    Enum.reduce(docs, %{}, fn %{category: category, identifier: identifier, title: title}, acc ->
      case Map.fetch(acc, category) do
        {:ok, list} -> %{acc | category => list |> Enum.concat([%{identifier: identifier, title: title}])}
        _ -> Map.put(acc, category, [%{identifier: identifier, title: title}])
      end
    end)
  end

  def organize do
    list_docs()
    |> aux()
    |> Enum.map(fn {c, t} -> %{category: c, tabs: t} end)
  end

  def create_doc(attrs \\ %{}) do
    %Doc{}
    |> Doc.changeset(attrs)
    |> Repo.insert()
  end

  # UseMdAsDoc.Docs.create_doc(%{identifier: "", category: "", content: "", index: 0, title: ""})


  # def update_doc(%Doc{} = doc, attrs) do
  #   doc
  #   |> Doc.changeset(attrs)
  #   |> Repo.update()
  # end

  # def delete_doc(%Doc{} = doc) do
  #   Repo.delete(doc)
  # end

  # def change_doc(%Doc{} = doc, attrs \\ %{}) do
  #   Doc.changeset(doc, attrs)
  # end
end
