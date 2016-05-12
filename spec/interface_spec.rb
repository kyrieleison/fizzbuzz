require 'interface'
require 'logger'
require 'helpers/inputer_stab'
require 'helpers/printer_spy'

describe Interface do
  let(:inputer) { InputerStub.new(input) }
  let(:printer) { PrinterSpy.new }
  let(:logger) { Logger.new }
  let(:interface) { Interface.new(inputer, printer, logger) }
  let(:input) { "3" }

  context 'メニュー選択で1を選択した場合' do
    it do
      expect(interface.start("1")).to be_a(FizzbuzzCommand)
    end
  end

  context 'メニュー選択で2を選択した場合' do
    it do
      expect(interface.start("2")).to be_a(LogCommand)
    end
  end

  context 'メニューにない数字を選択した場合' do
    it do
      expect(interface.start("100")).to be_a(NilCommand)
    end
  end
end
