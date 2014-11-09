class Array

 def my_inject(accumulator = nil) 
  i = accumulator == nil ? 1 : 0
  accumulator = accumulator == nil ? self.first : accumulator
  if block_given?
    self[i..-1].each do |element|
      result = yield(accumulator, element)
      accumulator = result
    end
  end
  accumulator
 end
end


