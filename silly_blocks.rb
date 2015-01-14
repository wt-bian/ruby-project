def reverser
  sentence = yield
  words = sentence.split
  new_words = []
  words.each do |i|
    new_words.push(i.reverse)
  end
  new_words.join(" ")
end 

def adder(num = 1)
  yield + num
end

def repeater(num = 1)
  num.times do
    yield
  end
end