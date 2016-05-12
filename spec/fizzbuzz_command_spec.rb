require 'fizzbuzz_command'
require 'logger'
require 'helpers/inputer_stab'
require 'helpers/printer_spy'

describe FizzbuzzCommand do
  let(:inputer) { InputerStub.new(input) }
  let(:printer) { PrinterSpy.new }
  let(:logger) { Logger.new }
  let(:command) { FizzbuzzCommand.new(inputer, printer, logger) }

  context '正常系' do
    let(:input) { "3" }

    it do
      command.run
      expect(logger.all).to eq(["3 : Fizz"])
    end
  end

  context 'FizzBuzzに整数以外の値を入力した場合' do
    let(:input) { "A" }

    it do
      command.run
      expect(logger.all).to be_empty
    end
  end
end
