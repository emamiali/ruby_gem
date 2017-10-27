class Hola
  def self.hi
    puts "Hello world!"
  end

  def self.write_file (text_file_name)
    File.open("./snippets/" + text_file_name + '.cson', 'w') { |file|
      file.write(    "'.source.html':
            'prefix': 'html'
            'body' : '")
      self.read_file.each { |line| file.write( line ) }
      file.write("'")}
  end

  def self.read_file
    file_text = []
    File.open('html.txt').each do |line|
      file_text << line.to_s
    end
    file_text
  end


end
