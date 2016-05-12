class PrinterSpy

  def initialize
    @arg = []
  end

  def print(arg)
    @arg << arg
  end

  def result
    @arg
  end
end
