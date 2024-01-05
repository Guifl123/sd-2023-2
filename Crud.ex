defmodule Polígono do
  defstruct [pontos: %{}]

  def new do
    %Polígono{pontos: %{}}
  end

  def adicionar_ponto(polígono, ponto) do
    polígono
      |> Map.put(ponto.x, ponto.y)
  end

  def ler_pontos(polígono) do
    polígono.pontos
  end

  def atualizar_ponto(polígono, ponto, novo_ponto) do
    polígono
      |> Map.update(ponto.x, novo_ponto.y, fn _ -> novo_ponto.y end)
  end

  def excluir_ponto(polígono, ponto) do
    polígono
      |> Map.delete(ponto.x)
  end
end
