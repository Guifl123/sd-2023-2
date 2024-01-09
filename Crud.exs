defmodule Ponto do
end

defmodule Poligono do
  defstruct [pontos: %{}]

  def new do
    %Poligono{pontos: %{}}
  end

  def adicionar_ponto(poligono, ponto) do
    poligono
      |> Map.put(ponto.x, ponto.y)
  end

  def ler_pontos(poligono) do
    poligono.pontos
  end

  def atualizar_ponto(poligono, ponto, novo_ponto) do
    poligono
      |> Map.update(ponto.x, novo_ponto.y, fn _ -> novo_ponto.y end)
  end

  def excluir_ponto(poligono, ponto) do
    poligono
      |> Map.delete(ponto.x)
  end

  def menu do
    IO.puts("=== Menu ===")
    IO.puts("1. Adicionar ponto")
    IO.puts("2. Ler pontos")
    IO.puts("3. Atualizar ponto")
    IO.puts("4. Excluir ponto")
    IO.puts("0. Sair")
    IO.gets()
  end

  def start do
    poligono = Poligono.new()
    while true do
      opcao_inteiro = String.to_integer(IO.gets())
      case opcao_inteiro do
        1 ->
          ponto = Ponto.new(x: IO.gets(), y: IO.gets())
          Poligono.adicionar_ponto(poligono, ponto)
        2 ->
          IO.puts(Poligono.ler_pontos(poligono))
        3 ->
          ponto = Ponto.new(x: IO.gets(), y: IO.gets())
          novo_ponto = Ponto.new(x: IO.gets(), y: IO.gets())
          Poligono.atualizar_ponto(poligono, ponto, novo_ponto)
        4 ->
          ponto = Ponto.new(x: IO.gets(), y: IO.gets())
          Poligono.excluir_ponto(poligono, ponto)
        0 ->
          break
      end
    end
  end
end
