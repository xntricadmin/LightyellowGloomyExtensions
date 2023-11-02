require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password
  
  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end
   
  def to_s
  "First name: #{@first_name}, Last name: #{@last_name},Username: #{@username}, Email: #{@email}"
  end
end
 
james = Student.new("James", "Bond", "jamesG", "james@xntric.io", "password1")
john = Student.new("John", "Doe", "JohnD", "john@xntric.io", "password2")

hashed_password = james.create_hash_digest(james.password)

puts hashed_password

