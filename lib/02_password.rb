require 'io/console'

def signup()
    password = ""
    
    loop do
        puts "Veuillez definir votre mot de passe"
        
        password = STDIN.noecho(&:gets).chomp
        if password != ""
            return password
        end
    end
end

def login(password)
    loop do
        puts "Veuillez entrez votre mot de passe"
        password_verif = STDIN.noecho(&:gets).chomp
        if password == password_verif 
            welcome_screen
            break
        end
    end
end

def welcome_screen()
    puts "Bienvenue sur le site top secret de la NSA"
    puts "Information top secret : la NSA ecoute 8===D"
end

def perform()
    password = signup
    login(password)
end

perform