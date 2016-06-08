require 'rspec'
require_relative '../model/analizador_de_argumentos'

describe 'AnalizadorDeArgumentos' do

  it 'argumento espera pretty' do
    analizador = AnalizadorDeArgumentos.new
    array_de_argumentos = ["--format=pretty"]
    analizador.analizar_argumentos(array_de_argumentos)
    expect(analizador.formato).to eq "pretty"
  end

  it 'argumento espera quiet' do
    analizador = AnalizadorDeArgumentos.new
    array_de_argumentos = ["--format=quiet"]
    analizador.analizar_argumentos(array_de_argumentos)
    expect(analizador.formato).to eq "quiet"
  end

  it 'argumento de formato erroneo espera mensaje' do
    analizador = AnalizadorDeArgumentos.new
    array_de_argumentos = ["--format=nada"]
    analizador.analizar_argumentos(array_de_argumentos)
    expect(analizador.formato).to eq "Formato no aceptado. Las opciones posibles son pretty o quiet"
  end

end
