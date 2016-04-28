require 'fizzbuzz_command'
require 'log_command'
require 'nil_command'

class Interface

  def initialize(inputer, printer, logger)
    @inputer = inputer
    @printer = printer
    @logger  = logger
  end

  def start(mode)
    command = case mode
    when "1" then
      @printer.print("FizzBuzz 実行モード")
      FizzbuzzCommand.new(@inputer, @printer, @logger)
    when "2" then
      @printer.print("FizzBuzz 履歴出力モード")
      LogCommand.new(@printer, @logger)
    else
      NilCommand.new()
    end
    command.run()
  end
end
