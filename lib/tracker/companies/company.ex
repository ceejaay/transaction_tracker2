defmodule Tracker.Companies.Company do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tracker.Companies.Company

  schema "company" do
    field :available_credit, :integer
    field :credit_line, :integer
    field :name, :string
    has_many :users, Company 

    timestamps()
  end

  @doc false
  def changeset(company, attrs) do
    company
    |> cast(attrs, [:name, :credit_line, :available_credit])
    |> validate_required([:name, :credit_line, :available_credit])
  end
end
