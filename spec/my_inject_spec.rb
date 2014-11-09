require 'my_inject'

describe 'my_inject' do

  it 'print sum of 6 elements' do
    expect([10, 23, 32, 10, 20, 30].my_inject(10) {|sum, num| sum+num }).to eq 135
  end

  it 'print diff of two elements' do
    expect([10, 23, -13].my_inject(10) {|diff, num| diff-num }).to eq -10
  end

  it 'print multiply result of three elements' do
    expect([10, 23, 10].my_inject(2) {|mult, num| mult*num }).to eq 4600
  end

  it 'print division result of two' do
    expect([100, 10, 10].my_inject {|mult, num| mult/num }).to eq 1   
  end
end
