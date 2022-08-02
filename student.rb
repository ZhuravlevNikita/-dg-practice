class Where
  def self.run
    puts "Enter age"
    age = gets.chomp
    file = File.open('results.txt', 'a')
    File.foreach('students.txt') {|student| file.puts (student if student.include? (age))}
    file.close
  end
end

Where.run