require 'save_command'
require 'logger'
require 'filer'

describe SaveCommand do
  let(:logger) { Logger.new }
  let(:command) { described_class.new(logger) }

  it do
    logger.add("3", "Fizz")
    logger.add("5", "Buzz")
    command.run
    expect(Filer.result).to eq(["3 : Fizz", "5 : Buzz"])
  end
end
