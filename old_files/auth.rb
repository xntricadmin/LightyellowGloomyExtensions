users = [
  {username: "Joshua", password: "password"},
  {username: "Rosanna", password: "password"},
  {username: "Evie", password: "password"},
  {username: "Thea", password: "password"},
  {username: "James", password: "password"}
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    #puts "user is #{user_record[:username]} and password is #{user_record[:password]}" 
    if user_record[:username].downcase == username && user_record[:password] == password
      puts "you validated correctly!"
      return "1"
    end
  end
  return "Credentials were not correct"
end

WelcomeMessage = "Welcome to the Authenticator"
p WelcomeMessage
WelcomeMessage.length.times {print "-"}
puts

validate = 0
attempts = 0
while attempts < 3
  print "Username: "
  username = gets.chomp.downcase
  print "Password: "
  password = gets.chomp

    authentication = auth_user(username, password, users)
    break if authentication == "1"
    puts "Press n to quit or enter to try again: "
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
    puts "you have exceeded the number of attempts" if attempts == 3
end
