class Book
  attr_accessor :title

  def initialize(title="a")
    @title = title
  end


  def title
    words = @title.capitalize.split
    except_word = ["and", "the", "in", "a", "an", "of", "to"]
    new_words = []
    words.each do |i|
      if except_word.include?(i)
        new_words.push(i)
      else
new_words.push(i.capitalize)
      end
    end
    new_words.join(" ")
  end



end