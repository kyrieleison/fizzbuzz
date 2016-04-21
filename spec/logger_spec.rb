require 'logger'

describe Logger do
  it do
    logger = described_class.new()
    logger.add("3", "Fizz")
    logger.add("5", "Buzz")
    expect(logger.all()).to eq(["3 : Fizz", "5 : Buzz"])
  end
end
