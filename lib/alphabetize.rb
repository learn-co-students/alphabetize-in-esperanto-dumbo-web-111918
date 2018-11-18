require "pry"

def alphabetize(arr)
  # code here
  esp_alpha = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz" # this has index elements, almost as if this string is a list

  arr.sort_by do |string| # break up array into strings
    string.split("").map do |chr| #iterate on each character of string
      esp_alpha.index(chr) # sort_by the position of character on the esp_alphabet
      #binding.pry
    end
  end

end
