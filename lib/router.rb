#require 'pry'
require_relative 'controller'

class Router
  attr_accessor :controller
#On veut qu'un "Router.new" lancé par app.rb, crée automatique une instance "@controller"
  def initialize
    @controller =  Controller.new
  end 

#rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit donc perform.
  def perform
    
    puts"                         ➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖"
    puts"                        ❗                                       ❗"                       
    puts"                        ❗        🔯 THE HACKING GOSSIP 🔯       ❗"
    puts"                        ❗                                       ❗"       
    puts"                         ➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖  " 
                                            
    
   

      while true

      puts "🔴 Voila les menu 📜"
      puts ""
      puts "⚪ Faite votre choix 🙋‍"
      puts""
      puts "        ➡️  1.Créer un Gossip 🖊️"
      puts""
      puts "                      ➡️  2.Voir les Gossips 👀"
      puts""
      puts "                                      ➡️  3.Supprimer un gossip ❌"
      puts""
      puts "                                                      ➡️  4. Quitter l'application 🖐️"
      print"        👉"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur
      puts""
      puts""
    

      case params #en fonction du choix
      when 1
        puts " Créer votre gossip🖊️ " 
        @controller.create_gossip
      when 2 
        puts" Voici votre gossips 👀"
        @controller.index_gossips
      when 3
        puts"Suppression du gossips ❌"
        @controller.delete_gossip

      when 4
        puts "Au revoire et à bientôt!🖐️🖐️🖐️ "
        break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.

      else
        puts "🚨🚨🚨 Vous avez fait un mauvais choix, veuillez réessayer" #saisit une entrée non prévue, il retourne au début du "while true". 
        #C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)

      end
    end
  end
end

#binding.pry