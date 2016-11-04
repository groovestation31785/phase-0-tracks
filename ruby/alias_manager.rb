
def change_vowel(name)
  vowels = ["a", "e", "i", "o", "u"]
  
  name_array = name.downcase.split('')
  new_name = name_array.map do |letter|
    if vowels.include?(letter)
      vowels.rotate(1)[vowels.index(letter)]
    else
      letter
    end
  end
  new_name.join
end

#p change_vowel("Felicia Torres")



def change_cons(name)
  consonants = ("bcdfghjklmnpqrstvwxyz").chars
  
  name_array = name.split('')
  new_name = name_array.map do |letter|
    if consonants.include?(letter)
      consonants.rotate(1)[consonants.index(letter)]
    else
      letter
    end
  end
  new_name.join  
end



def swap_names(name)
  fullname_array = name.split
  fullname_array[0], fullname_array[1] = fullname_array[1], fullname_array[0]
  cap_fullname = fullname_array.map(&:capitalize)
  cap_fullname.join(" ")
end


p change_vowel("Alicia Florrezs")
p change_cons(change_vowel("Alicia Florrezs"))
p swap_names(change_cons(change_vowel("Alicia Florrezs")))




