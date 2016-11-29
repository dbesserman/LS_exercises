class TextAnalyzer
  def process
    file = File.open('sample_file.txt', 'r')
    yield(file)
    file.close
  end

  analyzer = TextAnalyzer.new
  analyzer.process { |file| puts "#{text.split("\n\n").count} paragraphs" }
  analyzer.process { |file| puts "#{text.split("\n").count} lines" }
  analyzer.process { |file| puts "#{text.split(" ").count} words" }
end
