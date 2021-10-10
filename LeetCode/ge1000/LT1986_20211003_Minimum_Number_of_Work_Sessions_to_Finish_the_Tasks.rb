





# error
def min_sessions(tasks, session_time)
    tasks.sort!.reverse!
    sz1 = tasks.size
    ans = 0
    for i in 0...sz1
        # next if tasks[i] == -1
        if tasks[i] == -1 then 
            next
        end
        sum2 = tasks[i]
        arr = [i]
        for j in i + 1...sz1
            if tasks[j] != -1 then
                if (sum2 + tasks[j]) <= session_time then
                    sum2 += tasks[j]
                    arr << j
                end
            end
        end
        if sum2 == session_time then
            print arr
            for idx in arr
                tasks[idx] = -1
            end
            puts sum2
            ans += 1
        end
    end

        for i in 0...sz1
            if tasks[i] == -1 then
                next
                # continue
            end
            sum2 = tasks[i]
            tasks[i] = -1
            lst = -1
            while sum2 != lst
                lst = sum2
                for i in 0...sz1
                    if tasks[i] != -1 then
                        if (sum2 + tasks[i]) <= session_time then
                            sum2 += tasks[i]
                            tasks[i] = -1
                        end
                    end
                end
            end
            puts sum2
            ans += 1
        end
    return ans
end


# error
# 就是分组，每组 元素的和 不能超过session_time, 最少可以几组。
#   greedy?   11 12 13 21 22    45  
# @param {Integer[]} tasks
# @param {Integer} session_time
# @return {Integer}
def min_sessions2(tasks, session_time)
    tasks.sort!.reverse!
    sz1 = tasks.size
    ans = 0
    for i in 0...sz1
        if tasks[i] == -1 then
            next
            # continue
        end
        sum2 = tasks[i]
        tasks[i] = -1
        lst = -1
        while sum2 != lst
            lst = sum2
            for i in 0...sz1
                if tasks[i] != -1 then
                    if (sum2 + tasks[i]) <= session_time then
                        sum2 += tasks[i]
                        tasks[i] = -1
                    end
                end
            end
        end
        puts sum2
        ans += 1
    end
    return ans
end



# arr = [1,2,3]
# st = 3

# arr = [3,1,3,1,1]
# st = 8

# arr = [1,2,3,4,5]
# st = 15

# arr = [2,3,3,4,4,4,5,6,7,10]
# st = 12
# 10+2 7+5 444 336

arr = [2,2,2,3,3,4,5,5,7,8,8,10,10]
st = 14
# 10+2+2 10+4 752 833 85


print min_sessions arr,st
print '\n'          # \n...



