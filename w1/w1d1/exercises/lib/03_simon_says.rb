def echo(word)
  word
end
def shout(word)
  word.upcase
end
def repeat(word, num=2)
  arr = [word]
  until arr.length == num
    arr << word
  end
  arr.join(" ")
end
def start_of_word(word, num)
  word[0..num-1]
end
def first_word(words)
  words.split.first
end
def titleize(words)
  answer = []
  lilwords = ['the', 'a', 'over', 'and']
  words.split.each do |word|
    if lilwords.include?(word)
      answer << word
      next
    end
    answer << word[0].upcase + word[1..-1]
  end
  answer.first[0] = answer.first[0].upcase
  answer.join(" ")
end
