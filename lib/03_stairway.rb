puts "Bienvenue sur le jeu de l'oie, appuyer sur entrez pour commencé"
start_game = gets.chomp

marche = 1
de = [1,2,3,4,5,6]

if start_game == ""
    puts de[rand(de.count)]
else
    puts "ERROR"
end