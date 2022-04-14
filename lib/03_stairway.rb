# global var
 $stair = 0
 $stair_change = 0
 $nb_try =0

#dice roller
def dice_roll
  dice_roll_result = 1 + rand(6)
  return dice_roll_result
end

#résult dice roller
def result(dice_roll_result)
  unless dice_roll_result < 5
    puts  "dice roll #{dice_roll_result}"
    #  puts "cat"
    $stair_change = 1
  else 
     unless dice_roll_result < 2
     puts  "dice roll #{dice_roll_result}"
    #  puts "dino"
   $stair_change = 0
     else 
     puts  "dice roll #{dice_roll_result}"
      # puts "tiger"
      $stair_change = -1
    end
  end
 # return stair_change
end

 def stairway
  until $stair == 10
    puts "Votre étage actuel est #{$stair}"
    dice_roll_result = dice_roll
    result(dice_roll_result)
     puts $stair_change
    $stair = $stair + $stair_change
    if $stair <0
      $stair =0
    end
    $nb_try += 1
   # puts "Votre nouvel étage est  #{$stair}"
   puts $nb_try
   end
 end



  def  average_finish_time
    tab =[]
    100.times { |_| perform(); tab.push $nb_try}
    moyenne = tab.inject{ |sum, el| sum + el }.to_f / tab.size
    puts "moyenne de #{moyenne} tentatives"
  end


  def perform 
    $stair = 0
    $stair_change = 0
    $nb_try =0 
  stairway()

  end

def system
  choice = 0
  puts "Enter 1 - play |2 - Average Result on 100 try |3 for leave"
  while true
    choice = gets.chomp
    case choice
      when "1"
        perform()
        puts "Enter 1 - play |2 - Average Result on 100 try |3 for leave"
        puts "nouveau choix ?"
       # choice = gets.chomp
        next 
      when "2"
        average_finish_time()
        puts "Enter 1 - play |2 - Average Result on 100 try |3 for leave"
        puts "nouveau choix ?"
        #choice = gets.chomp
        next 
      when "3"
        break
      else
        puts "unknow choice"
        next
    end
  end
end

system()
