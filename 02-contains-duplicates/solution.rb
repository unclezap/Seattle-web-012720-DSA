# Joe

def contains_dupes?(arr)
    if(arr.length === 0)
        puts false
    end
    i=0
    while arr[1]
        temp = arr[0]
        arr.shift
        if arr.include?(temp)
            puts true
        end
    end
    # returns true or false
end

# clarions
def dupes_hash(arr)
    hashy = {}
    i = 0
    while arr[i]
        if hashy[arr[i]]
            return true
        else
            hashy[arr[i]] = 1
        end
        i+=1
    end
    return false
end

first = Time.now
contains_dupes?([0,1,2,3,4,5,6,7,8,8])
puts "joe: "
puts (Time.now-first)

first = Time.now
puts dupes_hash([0,1,2,3,4,5,6,7,8,8])
puts "hashy: "
puts (Time.now-first)
