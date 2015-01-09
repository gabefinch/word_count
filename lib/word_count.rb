class String
  define_method(:word_count) do |query_word|
    downcase_input = downcase()
    downcase_query = query_word.downcase()
    backwards_input = downcase_input.reverse()
    backwards_query = downcase_query.reverse()
    count_adjust = 0
    if backwards_input.index(backwards_query).==(0)
      count_adjust = count_adjust.+(1)
      if downcase_input.==(downcase_query)
        count_adjust = count_adjust.+(1)
      end
    end
    leftovers_count = downcase_input.split(downcase_query).length()
    leftovers_count.-(1).+(count_adjust)
  end
end
