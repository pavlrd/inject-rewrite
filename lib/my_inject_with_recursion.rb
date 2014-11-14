class Array

 def my_inject_recursion(accumulator = nil, &block)
  return nil if self.empty? && accumulator == nil
  return accumulator if !accumulator.nil? && self.empty?
  return self.first if accumulator.nil? && self.length == 1
  object = self.dup
  return yield(accumulator, object.shift) if object.length == 1 && accumulator != nil
  return yield(object.shift, object.shift) if object.length == 2 && accumulator == nil
  accumulator = object.shift if accumulator.nil?
  number = accumulator.nil? ? object[1] : object.shift
  object.my_inject_recursion(yield(accumulator, number), &block)
end
end

