class Array

 def my_inject(accumulator = nil) 
  i = accumulator == nil ? 1 : 0
  accumulator = accumulator == nil ? self.first : accumulator
  self[i..-1].each do |element|
    result = yield(accumulator, element)
    accumulator = result
  end
  accumulator
 end


#  def my_inject(accumulator = nil)
#   if accumulator == nil
#     yield(self.first, self.first.next)
#   else
#     yield(accumulator, self.first)
#   end
# end
end


