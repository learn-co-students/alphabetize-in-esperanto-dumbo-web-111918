require "pry"


def alphabetize(arr)
  esperanto_alph = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  arr.sort_by { |a| a.split("").map{ |char| esperanto_alph.index(char) } }
end
