class Array

 # def my_inject(accumulator = nil) 
 #  i = accumulator == nil ? 1 : 0
 #  accumulator = accumulator == nil ? self.first : accumulator
 #  self[i..-1].each do |element|
 #    result = yield(accumulator, element)
 #    accumulator = result
 #  end
 #  accumulator
 # end


 def my_inject(accumulator = nil, &block)
  if self.length == 1 && accumulator != nil
    return yield(accumulator, self.shift)
  elsif self.length == 2 && accumulator == nil
    return yield(self.shift, self.shift)
  else
    accumulator = accumulator == nil ? self.shift : accumulator
    number = accumulator == nil ? self[1] : self.shift
    result = yield(accumulator, number)
    self.my_inject(result, &block)
  end
end
end


