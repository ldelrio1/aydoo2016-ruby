class SalidaEnArchivo

  def salida (nombre_archivo, salida)
    @salida = salida
    File.open(nombre_archivo, 'w') do |archivo|
      archivo.puts @salida
    end
  end
end
