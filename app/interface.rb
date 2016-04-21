require 'fizzbuzz'
require 'integer_validator'

class Interface

  def initialize(inputer, printer, logger)
    @inputer = inputer
    @printer = printer
    @logger  = logger
  end

  def start(mode)
    case mode
    when "1" then
      number = @inputer.gets.chomp
      return unless IntegerValidator.new(number).valid
      fizzbuzz = Fizzbuzz.new(number.to_i)
      @printer.print(fizzbuzz.exec)
      @logger.add(number, fizzbuzz.exec)
    when "2" then
      @logger.all.each {|log| @printer.print(log) }
    end
  end
end
