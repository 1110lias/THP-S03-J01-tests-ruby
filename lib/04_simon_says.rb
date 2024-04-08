def echo (le_string)
    return le_string
end

def shout (le_string)
    return le_string.upcase
end

def repeat (le_string, le_x=2)
    le_result = (le_string + " ") * le_x 
    return le_result.strip
end

def start_of_word (le_string, le_x = 1)
    le_result = le_string.slice(0,le_x)
end

def first_word (le_string)
    return le_string.split.first
end

def titleize(le_string)
    small_words = ["a", "an", "and", "the", "or", "for", "of", "nor", "on", "at", "to", "by", "with", "in", "but"]
        le_string.split.map.with_index do |word, index|
          if index == 0 || !small_words.include?(word.downcase)
            word.capitalize
          else
            word.downcase
          end
        end.join(" ")
    end

