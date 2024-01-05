defmodule SistemaSimples do
  defmodule Tarefa1 do
    def run do
      IO.puts "Executando Tarefa 1"
    end
  end

  defmodule Tarefa2 do
    def run do
      IO.puts "Executando Tarefa 2"
    end
  end

  defmodule Tarefa3 do
    def run do
      IO.puts "Executando Tarefa 3"
    end
  end

  defmodule Tarefa4 do
    def run do
      IO.puts "Executando Tarefa 4"
    end
  end

  def start do
    # Cria as tarefas
    tarefa1 = Task.start(Tarefa1, :run)
    tarefa2 = Task.start(Tarefa2, :run)
    tarefa3 = Task.start(Tarefa3, :run)
    tarefa4 = Task.start(Tarefa4, :run)

    # Espera que todas as tarefas sejam concluídas
    for tarefa <- [tarefa1, tarefa2, tarefa3, tarefa4] do
      Task.await(tarefa)
    end

    # Imprime uma mensagem de conclusão
    IO.puts "Sistema concluído"
  end
end
