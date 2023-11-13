defmodule Lista1 do
  def quatro_iguais?(a,b,c,d), do: a == b == c == d
  def tres_iguais?(a,b,c), do: a == b == c
  def quantos_iguais?(a,b,c) do
    cond do
    a == b == c -> 3
    a == b -> 2
    b == c -> 2
    a == c -> 2
    true -> 0
    end
  end
  def todos_diferentes?(a,b,c), do: a != b && b != c && a != c
  # n pode ser igual a p
  def quantos_iguais_2?(a,b,c) do
    cond do
    todos_diferentes? a,b,c -> 0
    tres_iguais? a,b,c -> 3
    true -> 2
    end
  end
  def elevado_dois(n), do: n * n
  def elevado_quatro(n), do: elevado_dois(elevado_dois(n))
  def palindromo?(s), do: String.reverse(s) == s
  def triang(a,b,c) do
    cond do
      a + b <= c -> false
      a + c <= b -> false
      b + c <= a -> false
      true -> true
    end
  end
  def sinal(a) do
    cond do
      a > 0 -> 1
      a < 0 -> -1
      true -> 0
    end
  end
  def menor(a,b) do
    cond do
      a < b -> a
      true -> b
    end
  end
  def menor_tres(a,b,c) do
    menor(menor(a,b), c)
  end


	
end