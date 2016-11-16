class String
  define_method(:find_and_replace) do |find_word, replace_word|
    word_array = []
    sentence_array = self.split()
    sentence_array.each() do |word|
      if word == find_word
        word_array.push(replace_word)
      else
        word_array.push(word)
      end
    end
    word_array.join(" ")
  end
end
#
# class String
#   define_method(:find_and_replace) do |find_word, replace_word|
#     find = find_word
#     replace = replace_word
#     word_array = []
#     sentence_array = self.split()
#     sentence_array.each() do |word|
#       if word == find
#         word_array.push(replace)
#       else
#         word_array.push self
#       end
#     end
#     word_array.join(" ")
#   end
# end
