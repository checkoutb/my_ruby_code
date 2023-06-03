




# @param {Integer[]} nums
# @return {Boolean}
def find132pattern(nums)
    pfxmn = Array.new(nums.length, nums[0])
    for i in 1...nums.length
        # pfxmn[i] = min(nums[i], pfxmn[i - 1])
        # pfxmn[i] = if nums[i] < pfxmn[i - 1] nums[i] else pfxmn[i - 1] end
        if nums[i] < pfxmn[i - 1]
            pfxmn[i] = nums[i]
        else
            pfxmn[i] = pfxmn[i - 1]
        end
    end
    stk = [nums[-1]]
    
    (1...nums.length - 1).reverse_each do |i|
        while pfxmn[i - 1] 

        # if nums[i] > stk.last
        #     if pfxmn[i - 1] < stk.last
        #         return true
        #     end
        #     stk.push(nums[i])
        # else

        # end
    end
    return false
end


# n = [1,2,3,4]
n = [3,1,4,2]

print find132pattern n

