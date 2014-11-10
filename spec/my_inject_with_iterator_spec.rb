require 'my_inject_with_iterator'

describe 'my inject with iterator' do

  let (:numbers) {[17, 21, 3, 59, 12]}

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
end
