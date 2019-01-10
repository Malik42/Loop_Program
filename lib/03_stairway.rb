def jeux()
    print "Bienvenu sur le jeux de l'oie, "

    marche = 1

    loop do
        puts "appuyer sur entrez pour lancer le dé"
        lance_de = gets.chomp
        if lance_de == ""
            de = rand(1..6)
            if de == 5 || de == 6
                marche += 1
                puts "la face du dé affiche #{de} vous avancez d'une case, vous etes a la case #{marche}"
            elsif de == 1
                if marche > 1
                    marche -= 1
                    puts "la face du dé affiche #{de} vous reculez d'une case, vous etes a la case #{marche}"
                else
                    marche == 1
                    puts "la face du dé affiche #{de} vous ne pouvez pas reculer vous restez a la case #{marche}"
                end
            else
                puts "la face du dé affiche #{de} rien ne se passe vous restez a la case #{marche}"
            end
            if marche == 10
                puts "BRAVO VOUS ETES A LA CASE 10!"
                break
            end
        else
            puts "Il faut appuyer sur entrez pour lancer le dé"
        end
    end
end

def computer_game()
    marche = 1
    try = 0
    loop do
        de = rand(1..6)
        try += 1
        if de == 5 || de == 6
            marche += 1
        elsif de == 1
            if marche > 1
                marche -= 1
            end
        end
        if marche == 10
            return (try)
        end 
    end
end

def average_finish_time()
    res = 0
    for i in 1..100
        res += computer_game
    end
    puts "la moyenne est de #{res / 100}"
end

jeux