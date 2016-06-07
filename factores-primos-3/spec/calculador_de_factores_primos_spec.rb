require 'rspec'
require_relative '../model/calculador_de_factores_primos'

describe 'CalculadorDeFactoresPrimos' do

  it 'devuelve factores primos de 10 espera 2 5' do
    calculador = CalculadorDeFactoresPrimos.new
    array_resultado = [2,5]
    expect(calculador.calcular_primos(10)).to match_array(array_resultado)
  end

end
