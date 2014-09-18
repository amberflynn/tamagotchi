# encoding: utf-8


# Superclass 

class Tamagotchioop
  require 'date'

    attr_accessor :name, :color

      def initialize(name, color)
        puts "Entrer le nom du tamagotchi"
        self.name = gets.chomp
        puts "Entrer la couleur du tamagotchi"
        self.color = gets.chomp
        t = Time.now 
      end

      def environment
        environment = "le salon"
      end

      def age
        "#{self.name} a #{years_old} jours."
      end

      def years_old
        DateTime.now.mjd - DateTime.parse("05-09-2014").mjd
      end

      def change_room
        puts "Dans quelle pièce souhaitez-vous aller?"
        puts "1. salon"
        puts "2. chambre"
        puts "3. Salle de bain"
        puts "4. Jardin"
        room_selected = gets.chomp.to_i
        environment = case room_selected
            when 1
              "le salon"
            when 2
              "la chambre"
            when 3
              "la salle de bain"
            when 4
              "le jardin"
            end
        puts "La nouvelle pièce est #{environment}"
      end


      def run
        action = nil
        until action == 3 do 
          puts "Que voulez-vous faire maintenant?"
          puts "1 = Afficher le profil"
          puts "2 = Changer de la pièce"
          puts "3 = Sortir"
          action = gets.chomp.to_i

          case action
          when 1
            puts tamagotchi.info
          when 2
            change_room
          end
      end

    def info
      "Je m'appelle #{self.name} et je suis #{self.color} ! Je suis actuellement dans #{environment}. J'ai #{years_old} jour(s)."
    end
end
end


# Subclass

class Character < Tamagotchioop

end


tamagotchi = Character.new('', '')
age
