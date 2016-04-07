require 'Interface'

class Printer

  def print(arg)
    p arg
  end
end

mode_number = STDIN.gets
Interface.new(STDIN, Printer.new).start(mode_number.chomp)
