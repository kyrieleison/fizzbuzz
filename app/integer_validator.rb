class IntegerValidator

  def initialize(string)
    @string = string
  end

  def valid
    if @string == "0"
      return true
    end
    if @string.to_i != 0
      return true
    end
    false
  end
end

