defmodule CRUD do
  use Ecto.Schema

  schema "crud" do
    field :nome, :string
    field :idade, :integer
  end

  def create(nome, idade) do
    tarefa = Task.async(fn ->
      CRUD.insert(nome, idade)
    end)

    tarefa
  end

  def update(id, nome, idade) do
    tarefa = Task.async(fn ->
      CRUD.update(id, nome, idade)
    end)

    tarefa
  end

  def delete(id) do
    tarefa = Task.async(fn ->
      CRUD.delete(id)
    end)

    tarefa
  end

  def get(id) do
    tarefa = Task.async(fn ->
      CRUD.get(id)
    end)

    tarefa
  end

  def insert(nome, idade) do
    Repo.insert(CRUD, %CRUD{nome: nome, idade: idade})
  end

  def update(id, nome, idade) do
    Repo.update(CRUD, id, %CRUD{nome: nome, idade: idade})
  end

  def delete(id) do
    Repo.delete(CRUD, id)
  end

  def get(id) do
    Repo.get(CRUD, id)
  end
end
