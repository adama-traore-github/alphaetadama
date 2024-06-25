require_relative '../lib/Multiples_de_3_et_5'
describe 'sum_of_multiples' do
  it 'returns the sum of multiples of 3 or 5 below 1000' do
    expect(sum_of_multiples(1000)).to eq(233168)
  end
end
