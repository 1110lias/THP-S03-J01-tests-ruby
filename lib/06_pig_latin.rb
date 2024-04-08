def translate(le_string)
  arr_word = le_string.split
  translated_words = arr_word.map { |word| le_verificateur(word) }
  return translated_words.join(" ")
end

def le_verificateur(word)
  if le_squ(word) 
    translated_word = word[3..-1] + word[0..2] + "ay"
  elsif les_3c(word)
    translated_word = word[3..-1] + word[0..2] + "ay"
  elsif les_2c(word) || le_qu(word)
    translated_word = word[2..-1] + word[0..1] + "ay"
  elsif les_1c(word)
    translated_word = word[1..-1] + word[0] + "ay"
  else
    translated_word = word + "ay"
  end
  return translated_word
end

def les_3c(word) #avec un array
  consonnes = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  first_three_letters = word[0..2].downcase
  return first_three_letters.chars.all? { |char| consonnes.include?(char) }
end

def le_squ(word) 
  first_three_letters = word[0..2].downcase
  return first_three_letters == "squ"
end

def les_2c(word) #avec un range
  les_consonnes = ('a'..'z').to_a - ['a', 'e', 'i', 'o', 'u']
  first_two_letters = word[0..1].downcase
  return first_two_letters.chars.all? { |char| les_consonnes.include?(char) }
end

def le_qu(word) 
  first_two_letters = word[0..1].downcase
  return first_two_letters == "qu"
end

def les_1c(word) # avec un string
  les_consonnes = "bcdfghjklmnpqrstvwxyz"
  first_letter = word[0].downcase
  return les_consonnes.include?(first_letter)
end

# Example usage
puts translate("the quick brown fox")
puts translate("school")
puts translate("quiet")
puts translate("three")
puts translate("square")
