class Array

	def initial_not_given?
		@initial.is_a?(String)
	end

	def setup_inject(initial)
		@initial = initial
    @dupl_self = self.dup
	end

	def set_number
    @initial = @dupl_self.shift if initial_not_given?
    initial_not_given? ? @number = self.first : @number = @dupl_self.shift
	end

	def recursion(&block)
    @dupl_self.my_inject_recursion(yield(@initial, @number), &block)
	end
	
	def self_one_number_no_initial  
		self.length == 1 && initial_not_given?
	end

  def self_two_numbers_no_initial
    self.length == 2 && initial_not_given?
  end

	def result_when_self_empty
		return nil if initial_not_given?
		return @initial
	end

  def edge_cases
    self.empty? || self_one_number_no_initial
  end

  def result_edge_cases(&block)
    return result_when_self_empty if self.empty?
    return self.first if self_one_number_no_initial
    return yield(self[0], self[1]) if self_two_numbers_no_initial
  end

  def my_inject_recursion(initial = "", &block)
  	setup_inject(initial)
		return yield(self[0], self[1]) if self_two_numbers_no_initial
    return result_edge_cases(&block) if edge_cases
		set_number
		recursion(&block)
  end
end

	
