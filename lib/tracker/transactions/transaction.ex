defmodule Tracker.Transactions.Transaction do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tracker.Merchants.Merchant
  alias Tracker.Users.User

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "transactions" do
    field(:amount, :integer)
    field(:credit, :boolean, default: false)
    field(:debit, :boolean, default: false)
    field(:description, :string)

    belongs_to(:merchant, Merchant, type: :binary_id, foreign_key: :merchant_id)
    belongs_to(:user, User, type: :binary_id, foreign_key: :user_id)

    timestamps()
  end

  @doc false
  def changeset(transaction, attrs) do
    transaction
    |> cast(attrs, [:user_id, :amount, :debit, :description, :merchant_id])
    |> validate_required([:user_id, :amount, :debit, :description, :merchant_id])
  end
end
