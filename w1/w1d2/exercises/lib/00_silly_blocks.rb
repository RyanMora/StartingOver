def reverser(&prc)
  res = []
  prc.call.split(" ").each do |word|
    res << word.reverse
  end
  res.join(" ")
end
def adder(num = 1, &prc)
  prc.call + num
end
def repeater(num = 1, &prc)
  num.times do
    prc.call
  end
end
