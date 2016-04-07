require 'fizzbuzz'

class Interface

  def initialize(inputer, printer)
    @inputer = inputer
    @printer = printer
  end

  def start(mode_number)
    number = @inputer.get
    fizzbuzz = Fizzbuzz.new(number.to_i)
    @printer.print(fizzbuzz.exec)
  end
end
