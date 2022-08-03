class Where
  def self.run
    loop do
      puts "Enter age"
      age = gets.to_i
      break if age == -1
      file = File.open('results.txt', 'a')
      text = File.readlines('students.txt').map(&:chomp)
      text.each {|student| file.puts student if student[-2..-1].to_i == age}
      file.close
    end
  end
end

Where.run