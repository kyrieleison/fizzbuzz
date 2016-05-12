require 'fizzbuzz'
require 'integer_validator'

class FizzbuzzCommand 

  def initialize(inputer, printer, logger)
    @inputer = inputer
    @printer = printer
    @logger  = logger
  end

  def run
    @printer.print("FizzBuzz 実行モード")
    number = @inputer.gets.chomp
    return unless IntegerValidator.new(number).valid
    fizzbuzz = Fizzbuzz.new(number.to_i)
    @printer.print(fizzbuzz.exec)
    @logger.add(number, fizzbuzz.exec)
  end
end
