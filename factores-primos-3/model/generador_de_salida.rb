require_relative '../model/calculador_de_factores_primos'
require_relative '../model/formato_de_salida'
require_relative '../model/orden_de_salida'


class GeneradorDeSalida


  def generar_salida(numero, formato, orden)
    @calculador = CalculadorDeFactoresPrimos.new
    @formato = FormatoDeSalida.new
    @orden = OrdenDeSalida.new

    @numero = numero
    @factores_primos = @calculador.calcular_primos(@numero)

    case formato
      when "pretty"
        if orden == "asc"
          @salida = @formato.pretty(@numero, @orden.ascendente(@factores_primos))
        elsif orden == "des"
          @salida = @formato.pretty(@numero, @orden.descendente(@factores_primos))
        end
      when "quiet"
        if orden == "asc"
          @salida = @formato.quiet(@orden.ascendente(@factores_primos))
        elsif orden == "des"
          @salida = @formato.quiet(@orden.descendente(@factores_primos))
        end
    end
    @salida
  end
end
