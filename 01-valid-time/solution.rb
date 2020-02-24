# Jack

def valid_time(time)
    time = time.split(":")
    puts (0..23).include?(time[0].to_i) && (0..59).include?(time[1].to_i)
end

valid_time("25:12")
puts "second"
valid_time("12:45")

# lief adds that you can actually do greater than/less than comparisons on strings~!

def valid_time2(time)
   time = time.split(":")
   puts "0" <= time[0] && time[0] <= "23" && "0" <= time[1] && time[1] <= "59"
end


valid_time2("25:12")
puts "second"
valid_time2("12:45")