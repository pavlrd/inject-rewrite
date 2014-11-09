require 'my_inject'

describe 'my_inject' do

  it 'print reslut of sum of elements' do
    expect([10, 23, 32, 21, 30].my_inject(10) { |sum, num| sum + num }).to eq 126
  end

  it 'print result of diff of elements' do
    expect([10, 23, -13].my_inject { |diff, num| diff - num }).to eq 0
  end

  it 'print result of multiply of elements' do
    expect([10, 5, 3].my_inject(2) { |mult, num| mult * num }).to eq 300
  end

  it 'print result of division of elements' do
    expect([27, 3, 9].my_inject { |mult, num| mult / num }).to eq 1   
  end

  it 'print longest word in array' do
    expect(%w{ donkey dog sheep }.my_inject do |memo, word|
      memo.length < word.length ? memo : word
    end).to eq "dog"
  end
end
