class Array

  def number_present
    @number.is_a?(String)
  end

  def argument_check
    number_present ? set_vars_when_number_not_given : set_vars_when_given
  end

  def set_vars_when_number_not_given
    @index = 1
    @result = self.first
  end

  def set_vars_when_given
    @index = 0
    @result = @number
  end

  def block_runner(&block)
    self[@index..-1].each do |number| 
      @accumulator = yield(@result, number) 
      @result = @accumulator
    end
    @result 
  end

  # main inject method
  def inject_iterator(given_number = "", &block)
    @number = given_number;
    return nil if self.empty? && number_present
    argument_check
    block_runner(&block)
   end
end


