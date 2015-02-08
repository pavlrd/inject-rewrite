class Array

	def accumulator_is_string?
		@accumulator.is_a?(String)
	end

	def accumulator_is_number?
		@accumulator.is_a?(Integer) || @accumulator.is_a?(Float)
	end

  def my_inject_recursion(number = "", &block)
  	@accumulator = number
    object = self.dup

		if accumulator_is_string?
			return nil if object.empty?
			return object.first if self.length == 1
			return yield(object.shift, object.shift) if object.length == 2 
		elsif accumulator_is_number?
			return @accumulator if self.empty?
			return yield(@accumulator, object.shift) if object.length == 1
		end

    @accumulator = object.shift if accumulator_is_string?
    number = accumulator_is_string? ? object[1] : object.shift
    object.my_inject_recursion(yield(@accumulator, number), &block)
  end
end

	