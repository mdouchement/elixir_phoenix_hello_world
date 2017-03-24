defmodule Hello.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :username, :string, null: false
      add :password, :string
      add :password_hash, :string

      timestamps([{:inserted_at,:created_at}])
    end

    create unique_index(:users, [:username])
  end
end
