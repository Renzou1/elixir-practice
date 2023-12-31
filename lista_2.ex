defmodule Fat do
  def fat(n) when n <= 0 do
    1
  end
  def fat(n) do
    n * fat(n-1)
  end
end

defmodule Vendas do
  def vendas(n) when n>=0 do
    case n do
      0-> 33
      1-> 22
      2-> 18
      3-> 0
      4 -> 66
      _ -> 22
    end
  end
  def venda_total(0) do
    vendas(0)
  end

  def venda_total(n) do
    vendas(n) + venda_total(n-1)
  end



  def venda_total(menor, maior), do: venda_total_(menor, maior, 0)

  defp venda_total_(menor, maior, soma) do
    cond do
      maior > menor -> soma + venda_total_(menor, maior - 1, soma)
      maior == menor -> vendas(menor)
      true -> -1
    end
  end

  def maxi(a, b) do
    cond do
      a > b -> a
      true -> b
    end
  end
  def maior_venda(n) do
    cond do
      n > 0 -> maxi(vendas(n), maior_venda(n - 1))
      n == 0 -> vendas(0)
    end
  end

  def maior_venda(menor, maior) do
    cond do
      maior > menor -> maxi(vendas(maior), maior_venda(menor, maior - 1))
      maior == menor -> vendas(menor)
      true -> -1
    end
  end

  def semana_max_venda(n) do
    cond do
      maior_venda(n) == vendas(n) -> n
      true -> semana_max_venda(n - 1)
    end
  end

  def zero_vendas(n) do
    cond do
      vendas(n) == 0 -> n
      n == 0 -> -1
      true -> zero_vendas(n - 1)
    end
  end

  def acha_semana(_s, -1), do: -1
  def acha_semana(s, n) do
    cond do
      vendas(n) == s -> n
      true -> acha_semana(s, n-1)
    end
  end

  #def zero_vendas(n)
    #acha_semana(0, 10)

    def produtorio(menor, maior) do
      cond do
        menor < maior -> maior * produtorio(menor, maior - 1)
        menor == maior -> menor
      end
    end

    def potencia(base, 0), do: 1

    def potencia(base, expoente) do
      cond do
        expoente == 1 -> base
        true -> base * potencia(base, expoente-1)
      end
    end

    def fib(0), do: 0
    def fib(1), do: 1
    def fib(n) do
      fib(n - 1) + fib(n - 2)
    end


end
