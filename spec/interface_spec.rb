require 'interface'

class InputerStub
  
  def initialize(input)
    @input = input
  end

  def get
    @input
  end
end

class PrinterSpy

  def print(arg)
    @arg = arg
  end

  def result
    @arg
  end
end

describe Interface do
  it do
    inputer = InputerStub.new("3")
    printer = PrinterSpy.new

    interface = Interface.new(inputer, printer)
    interface.start(1)
    expect(printer.result).to eq("Fizz")
  end
end
