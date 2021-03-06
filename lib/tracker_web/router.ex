defmodule TrackerWeb.Router do
  use TrackerWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/" do
    pipe_through(:api)

    forward("/graphiql", Absinthe.Plug.GraphiQL,
      schema: TrackerWeb.Schema,
      interface: :simple,
      context: %{pubsub: TrackerWeb.Endpoint}
    )
  end
end
