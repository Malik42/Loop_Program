def half_pyramid()
    puts "Entrez un nombre entre 1 et 25"
    number = gets.chomp.to_i

    if number < 1 || number > 25
        puts "Veuillez choisir un chiffre entre  et 25"
    else
        for nb in 1..number
            spaces = number - nb
            spaces.times {print(" ")}
            
            for i in 1..nb
                print "#"
            end
            print "\n"
        end
    end
end

def full_pyramid()
    puts "Entrez un nombre entre 1 et 25"
    number = gets.chomp.to_i
    
    if number < 1 || number > 25
        puts "Veuillez choisir un chiffre 1 entre  et 25"
    else
        hashtag = 1
        for nb in 1..number
            spaces = number - nb
            spaces.times {print(" ")}
            for i in 1..hashtag
                print "#"
            end
            hashtag += 2
            print "\n"
        end
    end
end

def wtf_pyramid
    puts "Entrez un nombre impair"
    nb_user = gets.chomp.to_i

    reverse_char = 1
    reverse_spaces = (nb_user - 1) / 2
    if nb_user %2  == 0
        puts "Veuillez saisir un chiffre impair"
    else
        spaces = (nb_user - 1) / 2
        
        for nb_n in 1..nb_user
            
            for spaces in 1..reverse_spaces
                print " "
            end
            
            for nb_char in 1..reverse_char
                print "#"
            end
            
            if nb_n > ((nb_user - 1) / 2)
                reverse_spaces += 1
                reverse_char -= 2
            else
                reverse_spaces -= 1
                reverse_char += 2
            end

            print "\n"
        end
    end
end

wtf_pyramid