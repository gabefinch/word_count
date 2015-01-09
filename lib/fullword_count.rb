class String
  define_method(:fullword_count) do |query_word|
    downcase_input = downcase()
    downcase_query = query_word.downcase()
    words_array = downcase_input.split(" ")
    count = 0
    words_array.each() do |word|
      if word.==(downcase_query)
        count = count.+(1)
      end
    end
    count
  end
end
