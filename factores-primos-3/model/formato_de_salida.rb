class FormatoDeSalida

  def pretty(numeroRecibido, factores_primos)
    @salida_pretty = "Factores Primos #{numeroRecibido}: "
    pretty = factores_primos
    @salida_pretty << pretty.join(" ").to_s

  end
  
  def quiet(factores_primos)
    @quiet = factores_primos
    @quiet.join("\n")

  end

end
