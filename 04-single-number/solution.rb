# Kailana

def find_the_single(arr)
    # turn array into hash, with a value of count for each key element
    hash = arr.inject(Hash.new(0)){|h,k|h[k]+=1;h}
    # find the pair which has the value of 1
    hash.filter{|k,v|v==1}.keys.join.to_i
end

#lief

# given: [0,0,1]
def unique_int(arr)
	output = []
	i = 0
	while arr[i]
		if output.include?(arr[i])
			arr.slice!(i, 1)
		else 
			output << arr[i]
		end
		i+=1
	end
	output[0]
end

first = Time.now
100000.times do
    find_the_single([1,1,2,2,3,3,4,5,5,6,6,7,7,8,8])
end
puts "Kailana's Time: "
puts (Time.now - first)
puts "                    "
puts "                    "
first = Time.now
100000.times do
    unique_int([1,1,2,2,3,3,4,5,5,6,6,7,7,8,8])
end
puts "Lief's time: "
puts (Time.now - first)