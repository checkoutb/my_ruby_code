







# max_len = len if len > max_len

# s.split('').each_with_index do |v, k|
#     old_idx = char_to_idx[v]
#     char_to_idx[v] = k
#     if old_idx.nil? || old_idx < lower_bound
#       length += 1
#     else

# (0...s.length).each do |i|
#     if last_seen.include?(s[i])
#       start = [start, last_seen[s[i]] + 1].max
#     end
#     max_length = [max_length, i - start + 1].max
#     last_seen[s[i]] = i
#   end

# (0...s.length).each do |i|
#     # Get the closest last_seen
#     start = [start, last_seen[s[i]]].max if last_seen.include?(s[i])
#     max_length = [max_length, i - start].max
#     last_seen[s[i]] = i
#   end

# s.chars.each_with_index do |char, i|    

# max_window_size = [max_window_size, cur_window_size].max

# s.length.times do |i|
#     # check if the character was seen and in the current checking substring
#     s_str_begin = h[s[i]] + 1 if h[s[i]] && h[s[i]] >= s_str_begin
#     max = i - s_str_begin + 1 if (i - s_str_begin + 1) > max
#     h[s[i]] = i
#   end


# queue, hash = [], {}
# s.each_char.reduce(-Float::INFINITY) do |max, c|
#     hash.delete(char = queue.shift) until queue.empty? || char.eql?(c) if hash.key?(c)
#     [max, (queue << hash[c] = c).size].max
# end






# Runtime: 138 ms, faster than 57.41% of Ruby online submissions for Longest Substring Without Repeating Characters.
# Memory Usage: 210.2 MB, less than 66.76% of Ruby online submissions for Longest Substring Without Repeating Characters.
# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    map2 = {}
    map2.default = -1
    st = 0
    ans = 0
    # map2 = Hash.new(-1)
    for i in 0...s.size
        ch = s[i]
        # if map2[ch] != -1 
        # st = st if st > map2[ch] else map2[ch]            # py的。。
        st = st > map2[ch] + 1 ? st : map2[ch] + 1
        map2[ch] = i
        ans = ans > (t3 = i - st + 1) ? ans : t3
        # ans = ans if ans > (i - st + 1) else (i - st + 1)
    end
    ans
end



# s = "abcabcbb"
# s = "bbbbbbb"
# s = "pwwkew"
s = ""

puts(length_of_longest_substring(s))

