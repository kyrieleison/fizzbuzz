class PrinterSpy

  def initialize
    @arg = []
  end

  def puts(arg)
    @arg << arg
  end

  def result
    @arg
  end
end
