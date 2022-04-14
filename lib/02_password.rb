def signup
  puts "Define Password :"
  print "> "
  password = gets.chomp
  return password
# sécuriser avec un "ne doit pas être vide"
end

def login (password)
  password_enter = ''#init vide, penser  bloquer le non vide
  puts "Enter Password :"
    print "> "
    password_enter = gets.chomp
  until password_enter == password
    puts "Wrong Password, enter Password :"
    print "> "
    password_enter = gets.chomp
  end  
end

def welcome_screen
  puts "Welcome in the secret screen."
  puts "You had the good password."
end

def perform 
  #password = signup
  login(signup)
  welcome_screen()
end

perform()