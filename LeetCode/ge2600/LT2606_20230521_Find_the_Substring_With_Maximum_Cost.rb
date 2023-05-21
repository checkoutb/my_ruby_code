

# def maximum_cost_substring s, c, v
#     h = {}
#     c.each_char.with_index { h[_1] = v[_2] }
#     s = s.each_char.map { h[_1] || _1.ord - 96 }
#     c = s[0]
#     r = [c, 0].max
#     for i in 1...s.size
#         x = s[i]
#         c = [c + x, x].max
#         r = [r, c].max
#     end
#     r
# end



# Runtime349 ms
# Beats
# 30%
# Memory213.1 MB
# Beats
# 60%

# @param {String} s
# @param {String} chars
# @param {Integer[]} vals
# @return {Integer}
def maximum_cost_substring(s, chars, vals)
    map2 = Hash.new
    for i in 0..chars.size
        map2[chars[i]] = vals[i]
    end

    # print s, chars, vals

    puts(map2)

    ans = 0
    t2 = 0
    # for ch in s
    for i in 0...(s.length)
        ch = s[i]

        # print ch "\n"
        # puts(ch)
        # print ans, i, t2
        # puts(ch)
        if map2.has_key?(ch) then
            t2 += map2[ch]
            # puts(map2[ch])
        else
            t2 += ch.ord - 'a'.ord + 1
        end

        if (t2 > ans) then
            ans = t2
        end

        if t2 < 0 then
            t2 = 0
        end
    end

    return ans
end



# s = "adaa"
# chars = "d"
# vals = [-1000]

s = "okyytyj"
chars = "uafndmokwztrjphgle"
vals = [189,-229,860,782,-194,-582,-743,966,777,90,526,-806,-992,845,-997,340,80,705]

print maximum_cost_substring s, chars, vals

