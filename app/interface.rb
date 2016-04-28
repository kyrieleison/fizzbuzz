require 'fizzbuzz_command'

class Interface

  def initialize(inputer, printer, logger)
    @inputer = inputer
    @printer = printer
    @logger  = logger
  end

  def start(mode)
    case mode
    when "1" then
      @printer.print("FizzBuzz 実行モード")
      command = FizzbuzzCommand.new(@inputer, @printer, @logger)
      command.run()
    when "2" then
      @printer.print("FizzBuzz 履歴出力モード")
      @logger.all.each {|log| @printer.print(log) }
    end
  end
end
