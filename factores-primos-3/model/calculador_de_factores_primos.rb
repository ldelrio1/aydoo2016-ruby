class CalculadorDeFactoresPrimos

  def calcular_primos(numeroRecibido)
    @lista_de_primos = Array.new
    numero = numeroRecibido
    for divisor in 2..numeroRecibido
      while numero % divisor == 0
        numero = numero / divisor
        @lista_de_primos << divisor
      end
    end
    @lista_de_primos
  end

end
