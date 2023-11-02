
# condition = true
# another_condition = false

# if condition || another_condition
#   puts "hello" 
# else
#   puts "bye"   
# end 
# puts "la la la"

# a = [1,2,3,4,5,6,7,8,9]
# puts a.last

my_details = {a: "James", b: 2, c: 3} 

p my_details.keys

p my_details[:a]

my_details.each  do |key, value|
  puts "The class for key is #{key.class} and the value is #{value.class}"

end

my_details[:d] = "James Bond"

p my_details[:e]

my_details.each { |somekey, somevalue| puts "The key is #{somekey} and the value is #{somevalue}"}

my_details.each { |k, v| my_details.delete(k) if v.is_a?(String)}

my_details.each { |somekey, somevalue| puts "The key is #{somekey} and the value is #{somevalue}"}


