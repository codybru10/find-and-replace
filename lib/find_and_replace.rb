# easy substitute word

class String
  define_method(:easy_replace) do |find_word, replace_word|
    self.downcase()
      if self.include?(find_word)
        new_sentence = self.gsub(find_word, replace_word)
      end
    new_sentence
  end
end

# "hi cat and cathedral".easy_replace("cat", "dog")

# substitute word
class String
  define_method(:find_and_replace) do |find_word, replace_word|
    word_array = []
    sentence_array = self.split(" ")
    sentence_array.each() do |word|
      if word.include?(find_word)
        word_array.push(replace_word)
      else
        word_array.push(word)
      end
    end
    word_array.join(" ")

  end
end


# counter
class String
  define_method(:counter) do |find_word|
    word_array = []
    counter = 0
    sentence_array = self.split(" ")
    sentence_array.each() do |word|
      if word.include?(find_word)
        counter = counter + 1
      end
    end
    counter
  end
end





# require('rspec')
#
# class String
#   define_method(:word_count) do |words_list|
#     initial_string = self.downcase()
#     words_list = words_list.downcase.gsub(/\W/, ' ').split(" ")
#     counter = 0
#     words_list.each() do |word|
#       if initial_string == word
#         counter = counter.+(1)
#       end
#     end
#     counter
#   end
# end brett new
