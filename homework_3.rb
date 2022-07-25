def word_game(word)
  if word[-1] == "s" && word[-2] == "c"
    puts 2**word.length
  else puts word.reverse
  end
end

word = gets.chomp
word_game(word)