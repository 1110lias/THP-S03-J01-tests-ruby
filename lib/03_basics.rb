def who_is_bigger (a,b,c)
  le_array = [a, b, c]
  arr_lettre = ["a","b","c"]
  le_hash = le_array.zip(arr_lettre).to_h        
    if le_array.any?(&:nil?)                      #methode 1 detect nil
      #le_array.find { |element| element.nil? }   #methode 2 detect nil
      return "nil detected"
    else
      le_gros = le_array.max
      le_result = le_hash[le_gros] + " is bigger"
    end
    return le_result
end

def reverse_upcase_noLTA (le_string)
  le_STRING = le_string.upcase
  le_SRING = le_STRING.delete ("LTA")
  gnirs_LE = le_SRING.reverse
end

def array_42 (le_array)
 return le_array.include? (42)
end

def magic_array (s)
  le_result = s.flatten.sort.delete_if { |iter02| iter02 % 3 == 0 }.map{ |iter01| iter01 * 2 }.uniq
end