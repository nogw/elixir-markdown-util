defmodule UseMdAsDoc.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      UseMdAsDoc.Repo,
    ]

    opts = [strategy: :one_for_one, name: UseMdAsDoc.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
