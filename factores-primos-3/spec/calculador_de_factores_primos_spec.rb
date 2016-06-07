require 'rspec'
require_relative '../model/calculador_de_factores_primos'

describe 'CalculadorDeFactoresPrimos' do

  it 'con factores primos de 10 espera 2 5' do
    calculador = CalculadorDeFactoresPrimos.new
    array_resultado = [2,5]
    expect(calculador.calcular_primos(10)).to match_array(array_resultado)
  end

  it 'con factores primos de 18 espera 2 3 3' do
    calculador = CalculadorDeFactoresPrimos.new
    array_resultado = [2,3,3]
    expect(calculador.calcular_primos(18)).to match_array(array_resultado)
  end

  it 'con factores primos de 70 espera 2 5 7' do
    calculador = CalculadorDeFactoresPrimos.new
    array_resultado = [2,5,7]
    expect(calculador.calcular_primos(70)).to match_array(array_resultado)
  end

  it 'con factores primos de 132 espera 2 2 3 11' do
    calculador = CalculadorDeFactoresPrimos.new
    array_resultado = [2,2,3,11]
    expect(calculador.calcular_primos(132)).to match_array(array_resultado)
  end

  it 'con factores primos de 360 espera 2 2 2 3 3 5' do
    calculador = CalculadorDeFactoresPrimos.new
    array_resultado = [2,2,2,3,3,5]
    expect(calculador.calcular_primos(360)).to match_array(array_resultado)
  end

  it 'con factores primos de 0' do
    calculador = CalculadorDeFactoresPrimos.new
    array_resultado = [2,2,3,11]
    expect(calculador.calcular_primos(132)).to match_array(array_resultado)
  end

end
