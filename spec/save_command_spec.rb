require 'save_command'
require 'logger'
require 'filer'
require 'helpers/printer_spy'

describe SaveCommand do
  let(:path) { './spec/fixtures/log.txt' }
  let(:printer) { PrinterSpy.new }
  let(:logger) { Logger.new }
  let(:filer) { Filer.new(path) }
  let(:command) { described_class.new(printer, logger, filer) }

  it do
    logger.add("3", "Fizz")
    logger.add("5", "Buzz")
    command.run
    expect(filer.read).to eq("3 : Fizz\n5 : Buzz\n")
  end
end
