require "pry"

def alphabetize(arr)
  # code here
  sorted_array = []
  returned_array = []
  arr.each {|sentence| sorted_array << convert_speranto_to_number(sentence)}
  sorted_array = sorted_array.sort_by {|sentence| sentence}
  sorted_array.collect {|sentence| convert_number_to_speranto(sentence)}
end

def convert_speranto_to_number(speranto_sentence)
  number_array = []
  speranto_array = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split("")
  speranto_sentence.split("").collect {|letter| number_array << speranto_array.index(letter)}
  return number_array
end

def convert_number_to_speranto(number_array)
  speranto_array = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split("")
  speranto_sentence = ""
  number_array.collect {|number| speranto_sentence += speranto_array[number]}
  return speranto_sentence
end
