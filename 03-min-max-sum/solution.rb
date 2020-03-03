# Jonny

def cool_method(arr)
    total = arr.sum
    maxi = arr.max
    mini = arr.min
    return "#{total-maxi} #{total-mini}"
end

# jack's idea: sort the array first

# lief's idea: 

def minmax(arr)
    sum = 0
    i=0
    output = [arr[0], arr[0]]

    while arr[i]
        sum +=arr[i]
        if output[0] > arr[i]
            output[0] = arr[i]
        elsif
            output[1] <arr[i]
            output[1] = arr[i]
        end
        i+=1
    end
    return [sum-output[1]], sum - output[0]
end
puts "Cool Method:"
first = Time.now
100000.times do
    minmax([1,2,3,4,5,4,5,6,7,8,9,89,8,9,7,6,5,3,4])
end
puts "Jonny's Time: "
puts (Time.now - first)
puts "                    "
puts "Min Max:"
first = Time.now
100000.times do
    cool_method([1,2,3,4,5,4,5,6,7,8,9,89,8,9,7,6,5,3,4])
end
puts "Lief's time: "
puts (Time.now - first)