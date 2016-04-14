class IntegerValidator

  def initialize(string)
    @string = string
  end

  def valid
    return true if zero_of_string?
    return true if integer?
    false
  end

  private

    def integer?
      @string.to_i != 0
    end

    def zero_of_string?
      @string == "0"
    end
end

