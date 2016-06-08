require 'rspec'
require_relative '../model/generador_de_salida'

describe 'GeneradorDeSalida' do

  it 'salida con pretty y asc' do
    generador = GeneradorDeSalida.new
    salida = "Factores Primos 360: 2 2 2 3 3 5"
    expect(generador.generar_salida(360, "pretty", "asc")).to eq salida
  end

  it 'salida con pretty y des' do
    generador = GeneradorDeSalida.new
    salida = "Factores Primos 360: 5 3 3 2 2 2"
    expect(generador.generar_salida(360, "pretty", "des")).to eq salida
  end

  it 'salida con quiet y des' do
    generador = GeneradorDeSalida.new
    salida_quiet = "5\n3\n3\n2\n2\n2"
    expect(generador.generar_salida(360, "quiet", "des")).to eq salida_quiet
  end

  it 'salida con quiet y asc' do
    generador = GeneradorDeSalida.new
    salida_quiet = "2\n2\n2\n3\n3\n5"
    expect(generador.generar_salida(360, "quiet", "asc")).to eq salida_quiet
  end
end
