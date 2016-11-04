def change_vowel(name)
  vowels = ["a", "e", "i", "o", "u"]
  name = name.split('')
  new_name = name.map do |letter|
    if vowels.include?(letter)
      vowels.rotate(1)[vowels.index(letter)]
    else
      letter
    end
  end
  new_name.join
end



def change_cons(name)
  consonants = ("bcdfghjklmnpqrstvwxyz").chars
  name = name.downcase.split('')
  new_name = name.map do |letter|
    if consonants.include?(letter)
      consonants.rotate(1)[consonants.index(letter)]
    else
      letter
    end
  end
  new_name.join
end


p change_cons(change_vowel("Felicia Torres"))