require 'fizzbuzz'
require 'logger'
require 'integer_validator'

class Interface

  def initialize(inputer, printer, logger)
    @inputer = inputer
    @printer = printer
    @logger  = logger
  end

  def start(mode)
    if mode == "1"
      number = @inputer.gets
      if IntegerValidator.new(number).valid
        fizzbuzz = Fizzbuzz.new(number.to_i)
        @printer.print(fizzbuzz.exec)
        # データを保存
        @logger.add(number, fizzbuzz.exec)
      end
    elsif mode == "2"
      # データを出す
      @logger.all.each do |log|
        @printer.print(log)
      end
    end
  end
end
