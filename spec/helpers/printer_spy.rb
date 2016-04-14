class PrinterSpy

  def print(arg)
    @arg = arg
  end

  def result
    @arg
  end
end
