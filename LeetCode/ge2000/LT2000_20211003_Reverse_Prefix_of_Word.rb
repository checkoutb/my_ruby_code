





        # reverse(word.begin(), word.begin() + word.find(ch) + 1);
        # return word;


    # reversed_segment = word[0..ch_index].reverse
    # reversed_segment + word[ch_index+1..-1]

    # "#{word[0..index].reverse}#{word[(index+1)..-1]}"

    # word[0..idx].reverse + word[idx + 1..-1]


# 200mb???
# Runtime: 44 ms, faster than 100.00% of Ruby online submissions for Reverse Prefix of Word.
# Memory Usage: 209.7 MB, less than 94.44% of Ruby online submissions for Reverse Prefix of Word.
# @param {String} word
# @param {Character} ch
# @return {String}
def reverse_prefix(word, ch)
    t2 = word.index(ch)
    if t2 == nil then
        return word
    end
    return word.slice(0, t2 + 1).reverse + word[t2 + 1, word.size - t2]             # slice == []
end





w = "abcdefd"
ch = "d"

ans = reverse_prefix(w, ch)

puts ans





