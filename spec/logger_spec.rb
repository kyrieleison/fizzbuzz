require 'logger'

describe Logger do
  it do
    logger = described_class.new()
    logger.add("hoge")
    logger.add("fuga")
    expect(logger.all()).to eq(%w(hoge fuga))
  end
end
