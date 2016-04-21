class Logger
  
  def initialize
    @data = []
  end

  def add(input, output)
    @data << input + " : " + output
  end

  def all
    @data
  end

end
