class Array

  def my_inject_iterator(accumulator = nil)
    return nil if self.empty? && accumulator == nil
    index = accumulator == nil ? 1 : 0
    accumulator = self.first if accumulator.nil?
    self[index..-1].each do |number|
      result = yield(accumulator, number)
      accumulator = result
    end
    accumulator
   end
end


