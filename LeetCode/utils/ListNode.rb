

class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end

    def ListNode.make_ListNode(arr)
        ans = tail = ListNode.new
        sz1 = arr.length
        for i in 0...sz1
            tail = tail.next = ListNode.new(arr[i])
        end
        ans.next
    end

    def ListNode.show_ListNode(node)
        n2 = node
        while n2 != nil
            print n2.val, ', '
            n2 = n2.next
        end
    end
end


# 。。有没有类似 py的 __name__=='__main__'的？
# a = ListNode.new
# print "asd"
# print a

# arr = [1,2,3,6,5]
# node = ListNode.make_ListNode(arr)

# ListNode.show_ListNode(node)

