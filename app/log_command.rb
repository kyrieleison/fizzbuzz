class LogCommand 

  def initialize(printer, logger)
    @printer = printer
    @logger  = logger
  end

  def run
    @printer.puts("FizzBuzz 履歴出力モード")
    @logger.all.each {|log| @printer.puts(log) }
  end
end
