require 'rspec'
require_relative '../model/orden_de_salida'

describe 'OrdenDeSalida' do

  it 'orden ascendente' do
    orden_de_salida = OrdenDeSalida.new
    array_ascendente = [2,5,7,9]
    expect(orden_de_salida.ascendente([2,5,7,9])).to match_array(array_ascendente)
  end

  it 'orden descendente' do
    orden_de_salida = OrdenDeSalida.new
    array_descendente = [9,7,5,2]
    expect(orden_de_salida.descendente([2,5,7,9])).to match_array(array_descendente)
  end

end
