require "pry"

class Show < ActiveRecord::Base
  
    # returns the characters associated with the show
    has_many :characters
    # can be used to build its characters
    has_many :actors, through: :characters
    #returns the network that the show belongs to
    belongs_to :network

    def actors_list
        #returns a list of the full names of each actor associated with the show
        self.actors.map do |actor|
          actor.full_name
        end
    end
end