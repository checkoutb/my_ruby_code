

require '../utils/ListNode.rb'



# n1, n2 = n1&.next, n2&.next
# & 是什么意思？

# l1 = l1.next if l1
# l2 = l2.next if l2

# while l1 || l2 || over
#     sum = (l1&.val || 0) + (l2&.val || 0) + (over || 0)       # || 0
#     over = nil if (over = sum / 10) == 0                       #
#     result << sum % 10
#     l1 = l1&.next
#     l2 = l2&.next
# end
# 应该是： 不为空 则执行.next   ？

# a_val = if a then a.val else 0 end


# Runtime: 96 ms, faster than 36.76% of Ruby online submissions for Add Two Numbers.
# Memory Usage: 210.3 MB, less than 52.57% of Ruby online submissions for Add Two Numbers.
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    ans = tail = ListNode.new
    carry = 0
    while l1 || l2 || (carry != 0)                  # 0 is true
        # puts carry
        carry += (l1 ? l1.val : 0) + (l2 ? l2.val : 0)
        tail = tail.next = ListNode.new(carry % 10, nil)
        carry /= 10
        l1, l2 = (l1 ? l1.next : l1), (l2 ? l2.next : l2)
    end
    ans.next
end




# print "aa"

arr1 = [9,9,9,9,9,9,9]
arr2 = [9,9,9,9]

l1 = ListNode.make_ListNode(arr1)
l2 = ListNode.make_ListNode(arr2)

l3 = add_two_numbers(l1, l2)

ListNode.show_ListNode(l3)


