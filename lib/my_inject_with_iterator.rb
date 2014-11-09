class Array

 def my_inject(accumulator = nil) 
  i = accumulator == nil ? 1 : 0
  accumulator = self.first if accumulator.nil?
  self[i..-1].each do |element|
    result = yield(accumulator, element)
    accumulator = result
  end
  accumulator
 end
end


