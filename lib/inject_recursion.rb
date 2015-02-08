class Array

	def initial_not_given?
		@initial.is_a?(String)
	end

	def setup_inject(initial)
		@initial = initial
    @dupl_self = self.dup
	end

	def set_number
		initial_not_given? ? @number = self.first : @number = @dupl_self.shift
	end

	def recursion(&block)
    @dupl_self.my_inject_recursion(yield(@initial, @number), &block)
	end

	def self_one_digit_no_initial
		self.length == 1 && initial_not_given?
	end

	def result_when_self_empty
		return nil if initial_not_given?
		return @initial
	end

  def my_inject_recursion(initial = "", &block)
  	setup_inject(initial)
  	return result_when_self_empty if self.empty?
  	return self.first if self_one_digit_no_initial
		return yield(self[0], self[1]) if self.length == 2 && initial_not_given?
		@initial = @dupl_self.shift if initial_not_given?
		set_number
		recursion(&block)
  end
end

	