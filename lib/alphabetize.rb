def alphabetize(arr)
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  arr.sort_by { |word| word.split("").collect {|letter| esperanto_alphabet.index(letter) } }
end
