require 'fizzbuzz'
require 'integer_validator'

class FizzbuzzCommand 

  def initialize(inputer, printer, logger)
    @inputer = inputer
    @printer = printer
    @logger  = logger
  end

  def run
    @printer.puts("FizzBuzz 実行モード")
    number = @inputer.gets.chomp
    return unless IntegerValidator.new(number).valid
    fizzbuzz = Fizzbuzz.new(number.to_i)
    @printer.puts(fizzbuzz.exec)
    @logger.add(number, fizzbuzz.exec)
  end
end
