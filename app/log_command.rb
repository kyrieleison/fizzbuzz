class LogCommand 

  def initialize(printer, logger)
    @printer = printer
    @logger  = logger
  end

  def run
    @logger.all.each {|log| @printer.print(log) }
  end
end
