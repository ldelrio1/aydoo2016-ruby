class AnalizadorDeArgumentos

  attr_reader :formato
  attr_reader :orden
  attr_reader :numero
  attr_reader :salida_en_archivo
  attr_reader :archivo

  def initialize
    @formato = "pretty"
    @orden = "asc"
    @salida_en_archivo = false
    @archivo = nil
  end

  def analizar_argumentos(args)
    initialize
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
            raise ArgumentError.new @formato
        end
      elsif argumento.include? "--sort:"
        @orden_ingresado = argumento.partition(':').last
        case @orden_ingresado
          when "des"
            @orden = "des"
          when "asc"
            @orden = "asc"
          when String
            @orden = "Orden no aceptado. Las opciones posibles son asc o des"
            raise ArgumentError.new @orden
        end
      elsif argumento.include? "--output-file="
        @salida_en_archivo = true
        @archivo = argumento.partition('=').last

      elsif (args[0].to_i > 2)
          @numero = args[0].to_i
        else
          raise ArgumentError.new "No se pueden ingresar numeros menores a 2"
        end
      end
    end
  end

end
