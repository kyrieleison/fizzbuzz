require 'fizzbuzz'

class Interface

  def initialize(inputer, printer)
    @inputer = inputer
    @printer = printer
  end

  def start(mode)
    if mode == "1"
      number = @inputer.gets
      fizzbuzz = Fizzbuzz.new(number.to_i)
      @printer.print(fizzbuzz.exec)
    end
  end
end
