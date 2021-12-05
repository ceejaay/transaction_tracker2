defmodule TrackerWeb.Schemas.Types do
  @moduledoc """
  Defines the types for the Schema to use.
  """
  use Absinthe.Schema.Notation

  import_types(Absinthe.Type.Custom)
  import_types(TrackerWeb.Schemas.MerchantsSchema)
  import_types(TrackerWeb.Schemas.TransactionsSchema)
  import_types(TrackerWeb.Schemas.UsersSchema)
end
