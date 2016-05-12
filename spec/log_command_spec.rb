require 'log_command'
require 'logger'
require 'helpers/printer_spy'

describe LogCommand do
  let(:printer) { PrinterSpy.new }
  let(:logger) { Logger.new }
  let(:command) { described_class.new(printer, logger) }

  it do
    logger.add("3", "Fizz")
    logger.add("5", "Buzz")
    command.run
    expect(printer.result.include?("3 : Fizz")).to be_truthy
    expect(printer.result.include?("5 : Buzz")).to be_truthy
  end
end
