class Filer 

  def initialize(path)
    @path = path
    unless File.exist?(@path) then
      FileUtils.touch(@path)
    end
  end

  def write(logs)
    File.open(@path, 'w') do |file|
      logs.each do |log|
        file.write(log + "\n")
      end
    end
  end

  def result
    lines = []
    File.open(@path) do |file|
      file.each_line do |line|
        lines << line.chomp
      end
    end
    lines
  end
end
