dial_book = {
  "new york" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "san fransisco" => "301",
  "miami" => "305",
  "palo alto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}  

def get_city_names (city_hash)
  puts city_hash.keys
end

def get_area_code (city_hash, key)
  city_hash[key]
end

loop do
  puts "Do you want to look up an area code based on a city name? (Y/N)"
  input = gets.chomp.downcase
  break if input != "y"
  get_city_names(dial_book)
  print "Enter your selection: "
  chosen_city = gets.chomp.downcase
  if dial_book.include?(chosen_city)
    puts "your code is #{get_area_code(dial_book, chosen_city)}"  
  else
    puts "invalid city selection, try again"
  end
end


