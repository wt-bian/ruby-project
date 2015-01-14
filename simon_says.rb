def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, num = 2)
  result = ""
  num.times do |i|
    if i == num-1
      result += word
    else
      result += "#{word} "
    end
  end
  result
end

def start_of_word(word, num)
  word[0..num-1]
end

def first_word(sentence)
  sentence.split(" ")[0]
end

def titleize(sentence)
  words = sentence.capitalize.split(" ")
  new_word = []
  little_word = ["the","a","an","over","on","and"]
  words.each do |word|
    if little_word.include?(word)
      new_word.push(word)
    else
      new_word.push(word.capitalize)
    end
  end
  new_word.join(" ")
end
