require 'rspec'
require_relative '../model/formato_de_salida'

describe 'FormatoDeSalida' do

  it 'espera pretty' do
    formato = FormatoDeSalida.new
    array_entrante = [2,5]
    expect(formato.pretty(10, array_entrante)).to eq 'Factores Primos 10: 2 5'
  end


end
