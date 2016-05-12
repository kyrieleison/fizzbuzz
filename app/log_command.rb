class LogCommand 

  def initialize(printer, logger)
    @printer = printer
    @logger  = logger
  end

  def run
    @printer.print("FizzBuzz 履歴出力モード")
    @logger.all.each {|log| @printer.print(log) }
  end
end
