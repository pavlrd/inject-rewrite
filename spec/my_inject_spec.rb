require 'my_inject'

describe 'my_inject' do

  it 'print sum of two elements' do
    expect([10, 23].my_inject {|sum, num| sum+num }).to eq 33
  end

  it 'print diff of two elements' do
    expect([10, 23].my_inject {|diff, num| diff-num }).to eq -13
  end

  it 'print multiply result of two elements' do
    expect([10, 23].my_inject {|mult, num| mult*num }).to eq 230
  end

  it 'print division result of two' do
    expect([100, 10].my_inject {|mult, num| mult/num }).to eq 10   
  end
end
