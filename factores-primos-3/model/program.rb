require_relative '../model/analizador_de_argumentos'
require_relative '../model/generador_de_salida'
require_relative '../model/salida_en_archivo'

class Main

  @analizador = AnalizadorDeArgumentos.new
  @generador_de_salida = GeneradorDeSalida.new
  @salida_en_archivo = SalidaEnArchivo.new

  @analizador.analizar_argumentos(ARGV)
  @salida = @generador_de_salida.generar_salida(@analizador.numero, @analizador.formato, @analizador.orden )

  if !@analizador.salida_en_archivo
    puts @salida
  else
    @salida_en_archivo.salida(@analizador.archivo, @salida)
  end
end
