class Filer 

  def self.result
    lines = []
    path = './log/log.txt'
    # return unless File.exist?(path)
    File.open(path) do |file|
      file.each_line do |line|
        lines << line.chomp
      end
    end
    lines
  end
end
