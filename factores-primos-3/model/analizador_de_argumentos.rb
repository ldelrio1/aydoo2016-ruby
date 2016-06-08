class AnalizadorDeArgumentos

  attr_reader :formato
  attr_reader :orden

  def initialize
    formato = "pretty"
    orden = "asc"

  end

  def analizar_argumentos(args)
    if args.length > 0
      args.each do |argumento|
      if argumento.include? "--format="
        @formato_ingresado = argumento.partition('=').last
        case @formato_ingresado
          when "pretty"
            @formato = "pretty"
          when "quiet"
            @formato = "quiet"
          when String
            @formato = "Formato no aceptado. Las opciones posibles son pretty o quiet"
            puts @formato
        end
      
      end
    end
    else
      initialize
    end
  end
end
