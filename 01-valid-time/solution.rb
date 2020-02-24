# Jack

def valid_time(time)
    time = time.split(":")
    puts (0..23).include?(time[0].to_i) && (0..59).include?(time[1].to_i)
end

valid_time("25:12")
puts "second"
valid_time("12:45")