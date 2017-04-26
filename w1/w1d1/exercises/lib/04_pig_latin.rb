def translate(sentence)
  arr = []
  sentence.split.each do |word|
    arr << piglatinize(word)
  end
  arr.join(" ")
end

def piglatinize(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  beginning = ""
  ending = ""
  first_vowel = false
  phenom = false
  letters = word.split("")
  letters.each_index do |idx|
    phenom = true if letters[idx] == 'q' && letters[idx + 1] == 'u'
  end
  letters.each do |letter|
    first_vowel = true if vowels.include?(letter)
    if first_vowel
      beginning << letter
    else
      ending << letter
    end
  end
  fin = beginning + ending + "ay"
  if phenom
    fin[1..-3]+'uay'
  else
    fin
  end
end
