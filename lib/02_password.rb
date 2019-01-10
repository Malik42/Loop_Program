password = ""

loop do
    if password == ""
        puts "Veuillez definir votre mot de passe"
        password = gets.chomp
    else
        puts "Veuillez entrez votre mot de passe"
        password_verif = gets.chomp

        if password == password_verif 
            puts "Bienvenue sur le site top secret de la NSA"
            puts "Information top secret : la NSA ecoute 8===D"
            break
        end
    end
end