def translate(sentence)
  vowel = ["a","e","i","o","u"]
  words = sentence.split(" ")
  new_words = []
  words.each do |i|
    if i.match(/^[aeiou]w*/)
    new_words.push(i+"ay")
    elsif i.start_with?("qu")
new_words.push(i[2..-1]+"quay")
    else
      consonant = ""
      temp_num = 0
      i.length.times do |j|
        if vowel.include?(i[j])
          if i[j-1]=="q" && i[j]="u"
            temp_num = j + 1
            consonant += "u"
            break
          else
            temp_num = j
            break
          end
        else
          consonant += i[j]
        end
      end
      new_words.push(i[temp_num..-1]+consonant+"ay")
    end
  end
  new_words.join(" ")
end