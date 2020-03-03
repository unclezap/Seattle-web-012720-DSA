# lief's iterative version

def str_compress_iterative(str)
    start = str[0]
    count = 1
    output = String.new
    str.chars.each {|char|
        if output[-1] == char && char != start
            count += 1
        else
            output << count.to_s
            count = 1
            output << char
        end
    }
    output
end
​

# lief's recursive version

def str_compress_recursion(str, i, n, output=nil)
    output ||= String.new
    if str[i]
        if str[i+1] == str[i]
            str_compress_recursion(str, i+1, n+1, output)
        else
            output << str[i]
            output << n.to_s
            str_compress_recursion(str, i+1, 1, output)
        end
    else
        output
    end
end
​
time = Time.now
puts str_compress_iterative("testaaabbdd")
puts Time.now - time 
​
time = Time.now
puts str_compress_recursion("testaaabbdd", 0, 1)
puts Time.now - time 