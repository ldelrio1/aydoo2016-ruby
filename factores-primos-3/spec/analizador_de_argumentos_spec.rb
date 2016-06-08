require 'rspec'
require_relative '../model/analizador_de_argumentos'

describe 'AnalizadorDeArgumentos' do

  it 'argumento de formato espera pretty' do
    analizador = AnalizadorDeArgumentos.new
    array_de_argumentos = ["--format=pretty"]
    analizador.analizar_argumentos(array_de_argumentos)
    expect(analizador.formato).to eq "pretty"
  end

  it 'argumento de formato espera quiet' do
    analizador = AnalizadorDeArgumentos.new
    array_de_argumentos = ["--format=quiet"]
    analizador.analizar_argumentos(array_de_argumentos)
    expect(analizador.formato).to eq "quiet"
  end


  it 'argumento de orden espera asc' do
    analizador = AnalizadorDeArgumentos.new
    array_de_argumentos = ["--format=quiet", "--sort:asc"]
    analizador.analizar_argumentos(array_de_argumentos)
    expect(analizador.orden).to eq "asc"
  end

  it 'argumento de orden espera des' do
    analizador = AnalizadorDeArgumentos.new
    array_de_argumentos = ["--format=pretty", "--sort:des"]
    analizador.analizar_argumentos(array_de_argumentos)
    expect(analizador.orden).to eq "des"
  end

  it 'argumentos en distinto orden verifica orden espera des' do
    analizador = AnalizadorDeArgumentos.new
    array_de_argumentos = ["--sort:des","--format=pretty"]
    analizador.analizar_argumentos(array_de_argumentos)
    expect(analizador.orden).to eq "des"
  end

  it 'argumentos en distinto orden verifica formato espera quiet' do
    analizador = AnalizadorDeArgumentos.new
    array_de_argumentos = ["--sort:des","--format=quiet"]
    analizador.analizar_argumentos(array_de_argumentos)
    expect(analizador.orden).to eq "des"
  end


  it 'sin argumentos verifica formato por defaut espera pretty' do
    analizador = AnalizadorDeArgumentos.new
    array_de_argumentos = [ ]
    analizador.analizar_argumentos(array_de_argumentos)
    expect(analizador.formato).to eq "pretty"
  end

  it 'sin argumentos verifica orden por defaut espera asc' do
    analizador = AnalizadorDeArgumentos.new
    array_de_argumentos = [ ]
    analizador.analizar_argumentos(array_de_argumentos)
    expect(analizador.orden).to eq "asc"
  end

  it 'argumento de salida en archivo espera salida en archivo true' do
    analizador = AnalizadorDeArgumentos.new
    array_de_argumentos = ["--output-file=salida.txt"]
    analizador.analizar_argumentos(array_de_argumentos)
    salida_en_archivo = true
    expect(analizador.salida_en_archivo).to eq salida_en_archivo
  end


  it 'no hay argumento de salida en archivo se espera salida en archivo false' do
    analizador = AnalizadorDeArgumentos.new
    array_de_argumentos = ["--sort:des"]
    analizador.analizar_argumentos(array_de_argumentos)
    salida_en_archivo = false
    expect(analizador.salida_en_archivo).to eq salida_en_archivo
  end

  it 'argumento de salida en archivo se espera nombre de archivo' do
    analizador = AnalizadorDeArgumentos.new
    array_de_argumentos = ["--sort:des","--output-file=salida.txt"]
    analizador.analizar_argumentos(array_de_argumentos)
    archivo = "salida.txt"
    expect(analizador.archivo).to eq archivo
  end

end
