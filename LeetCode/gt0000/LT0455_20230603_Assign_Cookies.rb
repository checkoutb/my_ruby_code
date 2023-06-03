
# g.sort!
# s.sort!
# total = 0
# until g.empty? || s.empty?
#     if g[0] <= s[0]
#         g.shift
#         total += 1
#     end
#     s.shift
# end
# total


# Runtime107 ms
# Beats
# 44.44%
# Memory212.8 MB
# Beats
# 22.22%

def find_content_children(g, s)
    g = g.sort
    s = s.sort
    idx = 0
    # (0...g.length).each do 
    print g
    print s
    ans = 0
    for i in 0...s.length
        if idx == g.length
            break
        end
        if g[idx] <= s[i]
            ans += 1
            idx += 1
        end
    end
    ans
end


# g = Array.new(3){[1,2,3]}
# s = Array.new{[1,2]}

g = [1,2,3]
s = [1,1]

print find_content_children g, s



