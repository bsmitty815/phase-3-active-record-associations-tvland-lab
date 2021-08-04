require "pry"

class Actor < ActiveRecord::Base

    # returns a list of characters associated with the actor
    has_many :characters
    #returns the shows associated with the actor through their characters
    has_many :shows, through: :characters

    def full_name
        #returns the actor's full name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        #returns a list of roles for the actor using the character name and show name
        self.characters.map {|c| "#{c.name} - #{c.show.name}"}
    end

  
end


# peter = Actor.new(:first_name => "Peter", :last_name => "Dinklage")
# tyrion = Character.new(:name => "Tyrion Lannister")
# tyrion.actor = peter
# thrones = Show.new(:name => "Game of Thrones")
# tyrion.show = thrones
# tyrion.save 