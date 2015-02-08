require 'inject_iterator'

describe 'inject with iterator' do

  let (:numbers)  { [17, 21, 3, 59, 12] }

  it 'print result of sum of elements' do
    expect(numbers.my_inject_iterator(10) {|sum, num| sum + num}).to eq numbers.inject(10) {|sum, num| sum + num}
  end

  it 'print result of diff of elements' do
    expect(numbers.my_inject_iterator {|diff, num| diff - num}).to eq numbers.inject {|diff, num| diff - num}
  end

  it 'print result of multiply of elements' do
    expect(numbers.my_inject_iterator(2) {|mult, num| mult * num}).to eq numbers.inject(2) {|mult, num| mult * num}
  end

  it 'print result of division of elements' do
    expect(numbers.my_inject_iterator {|div, num| div / num}).to eq numbers.inject {|div, num| div / num}
  end

  it 'print longest word in array' do
    expect(%w{ donkey dog sheep }.my_inject_iterator do |memo, word|
      memo.length > word.length ? memo : word
    end).to eq "donkey"
  end

  it 'return nil if array is empty' do
    expect([].my_inject_iterator {|sum, num| sum + num}). to eq nil
  end

  it 'return element itself if it\'s one in array' do
    expect([1].my_inject_iterator).to eq 1
  end

  it 'return accumulator itself if given object is empty' do
    expect([].my_inject_iterator(10) {|sum, num| sum + num}).to eq 10
  end

  it 'not change state of the given object' do
    numbers2 = [17, 21, 3, 59, 12]
    numbers.my_inject_iterator {|div, num| div / num}
    expect(numbers).to eq numbers2
  end

  it 'takes symbol as an argument' do 
    expect(numbers.my_inject_iterator(&:+)).to eq 112
  end
end
