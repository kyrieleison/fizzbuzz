require 'fizzbuzz_command'
require 'log_command'
require 'save_command'
require 'nil_command'

class CommandSelector

  def initialize(inputer, printer, logger, filer)
    @inputer = inputer
    @printer = printer
    @logger  = logger
    @filer   = filer
  end

  def select(mode)
    command = case mode
    when "1" then
      FizzbuzzCommand.new(@inputer, @printer, @logger)
    when "2" then
      LogCommand.new(@printer, @logger)
    when "3" then
      SaveCommand.new(@printer, @logger, @filer)
    else
      NilCommand.new()
    end
    command
  end
end
