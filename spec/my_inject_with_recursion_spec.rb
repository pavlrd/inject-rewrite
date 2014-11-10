require 'my_inject_with_recursion'

describe 'my inject with recurion method' do

  let(:numbers)  { [27, 12, 9, 87, 5] }
  let(:numbers2) { [27, 12, 9, 87, 5] }

   it 'print result of sum of elements' do
    expect(numbers.my_inject_recursion(10) {|sum, num| sum + num}).to eq numbers2.inject(10) {|sum, num| sum + num}
  end

  it 'print result of diff of elements' do
    expect(numbers.my_inject_recursion {|diff, num| diff - num}).to eq numbers2.inject {|diff, num| diff - num}
  end

  it 'print result of multiply of elements' do
    expect(numbers.my_inject_recursion(2) {|mult, num| mult * num}).to eq numbers2.inject(2) {|mult, num| mult * num}
  end

  it 'print result of division of elements' do
    expect(numbers.my_inject_recursion {|div, num| div / num}).to eq numbers2.inject {|div, num| div / num}  
  end

  it 'print shortest word in array' do
    expect(%w{ donkey dog sheep }.my_inject_recursion do |memo, word|
      memo.length < word.length ? memo : word
    end).to eq "dog"
  end
end