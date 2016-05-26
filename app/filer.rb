class Filer 

  def write(logs)
    path = './log/log.txt'
    # return unless File.exist?(path)
    File.open(path, 'w') do |file|
      logs.each do |log|
        file.write(log + "\n")
      end
    end
  end

  def result
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
