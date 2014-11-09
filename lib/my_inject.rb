class Array

 def my_inject(accumulator = nil) 
  result = 0
  i = accumulator == nil ? 1 : 0
  accumulator = accumulator == nil ? self.first : accumulator
  if block_given?
    while i < self.length
    number = self[i]
    result = yield(accumulator, number)
    accumulator = result
    i += 1
  end
  end
  accumulator
 end
 
end

# a lot refactoring needs to be done, but it's working so far