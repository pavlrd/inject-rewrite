class Array

 def my_inject_recursion(accumulator = nil, &block)
  return yield(accumulator, self.shift) if self.length == 1 && accumulator != nil
  return yield(self.shift, self.shift) if self.length == 2 && accumulator == nil
  accumulator = self.shift if accumulator.nil?
  number = accumulator.nil? ? self[1] : self.shift
  self.my_inject_recursion(yield(accumulator, number), &block)
end
end