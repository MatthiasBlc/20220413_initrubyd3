 def half_pyramid
  print 'Salut, bienvenue dans ma super pyramide ! Combien d étages veux-tu ? (entre 1 et 25)'
  n = gets.chomp.to_i
  if n < 26 and n > 0
    puts 'Voici la pyramide :'
    i=0
    while i <= n-1
      i +=1
      puts ( "#" * i).rjust(n)
    end
  else
    puts 'Votre nombre n’est pas entre 1 et 25.'
  end  
end

def  full_pyramid
  print 'Salut, bienvenue dans ma super pyramide ! Combien d étages veux-tu ? (entre 1 et 25)'
  n = gets.chomp.to_i
  if n < 26 and n > 0
    puts 'Voici la pyramide :'
    i=0
    while i <= n-1
      i +=1
        print ( "#" * i).rjust(n)
        puts ("#" * i).chomp("#")
    end
  else
    puts 'Votre nombre n’est pas entre 1 et 25.'
  end  
 end

 def wtf_pyramid
    print 'Salut, bienvenue dans ma super pyramide ! Combien d étages veux-tu ? (entre 1 et 25)'
    n = gets.chomp.to_i
    if n < 26 and n > 0
      puts 'Voici la pyramide :'
      i=0
      while i <= n-1
        i +=1
          print ( "#" * i).rjust(n)
          puts ("#" * i).chomp("#")
      end
      while i >= 1
        i -=1
          print ( "#" * i).rjust(n)
          puts ("#" * i).chomp("#")
      end
    else
      puts 'Votre nombre n’est pas entre 1 et 25.'
    end  
 end

 #Bonus wtf : envoie bouler l'utilisateur s'il saisit un nombre pair.
 # mettre une boucle pour ne pas close en cas de NOK


 def system
  choice = 0
  puts "Enter 1 - half |2 - full |3 - WTF"
  while true
    choice = gets.chomp
    case choice
      when "1"
        half_pyramid()
        break 
      when "2"
        full_pyramid()
        break 
      when "3"
        wtf_pyramid()
        break
      else
        puts "unknow choice"
        next
    end
  end
end

system()