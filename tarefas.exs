defmodule SistemaSimples do
  import Task

  def start do
    IO.puts "Selecione uma tarefa:"
    IO.puts "1. Tarefa 1"
    IO.puts "2. Tarefa 2"
    IO.puts "3. Tarefa 3"
    IO.puts "4. Tarefa 4"

    opcao = IO.gets("") |> String.strip()

    case opcao do
      "1" ->
        tarefa1 = Task.async(SistemaSimples.Tarefa1, :run, [])
        Task.await(tarefa1)
      "2" ->
        tarefa2 = Task.async(SistemaSimples.Tarefa2, :run, [])
        Task.await(tarefa2)
      "3" ->
        tarefa3 = Task.async(SistemaSimples.Tarefa3, :run, [])
        Task.await(tarefa3)
      "4" ->
        tarefa4 = Task.async(SistemaSimples.Tarefa4, :run, [])
        Task.await(tarefa4)
    end
  end
end
