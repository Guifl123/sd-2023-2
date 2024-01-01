defmodule MeuBancoDeDados do
  use Ecto.Schema

  schema "meu_banco_de_dados" do
    field :nome, :string
    field :idade, :integer
  end

  def get_registro(id) do
    Repo.get(MeuBancoDeDados, id)
  end

  def criar_registro(nome, idade) do
    Repo.insert(MeuBancoDeDados, %{nome: nome, idade: idade})
  end

  def atualizar_registro(id, nome, idade) do
    Repo.update(MeuBancoDeDados, id, %{nome: nome, idade: idade})
  end

  def excluir_registro(id) do
    Repo.delete(MeuBancoDeDados, id)
  end
end

# Exemplo de uso

iex> MeuBancoDeDados.criar_registro("João", 30)
{:ok, %MeuBancoDeDados.MeuBancoDeDados{id: 1, nome: "João", idade: 30}}

iex> MeuBancoDeDados.get_registro(1)
%MeuBancoDeDados.MeuBancoDeDados{id: 1, nome: "João", idade: 30}
