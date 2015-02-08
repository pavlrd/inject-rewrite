require 'my_inject_with_recursion'

describe 'my inject with recurion method' do

  let(:numbers)  { [27, 12, 9, 87, 5] }

   it 'print result of sum of elements' do
    expect(numbers.my_inject_recursion(10) {|sum, num| sum + num}).to eq numbers.inject(10) {|sum, num| sum + num}
  end

  it 'print result of diff of elements' do
    expect(numbers.my_inject_recursion {|diff, num| diff - num}).to eq numbers.inject {|diff, num| diff - num}
  end

  it 'print result of multiply of elements' do
    expect(numbers.my_inject_recursion(2) {|mult, num| mult * num}).to eq numbers.inject(2) {|mult, num| mult * num}
  end

  it 'print result of division of elements' do
    expect(numbers.my_inject_recursion {|div, num| div / num}).to eq numbers.inject {|div, num| div / num}  
  end

  it 'print shortest word in array' do
    expect(%w{ donkey dog sheep }.my_inject_recursion { |memo, word| memo.length < word.length ? memo : word }).to eq "dog"
  end

   it 'return nil if array is empty' do
    expect([].my_inject_recursion {|sum, num| sum + num}). to eq nil
  end

  it 'return element itself if it\'s one in array' do
    expect([1].my_inject_recursion).to eq 1
  end

  it 'return accumulator itself if given object is empty' do
    expect([].my_inject_recursion(10) {|sum, num| sum + num}).to eq 10
  end

  it 'not change state of the given object' do
    numbers2 = [27, 12, 9, 87, 5] 
    numbers.my_inject_recursion {|div, num| div / num}
    expect(numbers).to eq numbers2
  end

  it 'takes symbol as an argument' do 
    expect(numbers.my_inject_recursion(&:+)).to eq 140
  end
end