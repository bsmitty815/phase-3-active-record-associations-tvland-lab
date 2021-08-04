class Network < ActiveRecord::Base
  
    #using has many returns the shows associated with the network 
    has_many :shows


    def sorry
        # apologizes for passing on John Mulaney's Pilot
      "We're sorry about passing on John Mulaney's pilot"
    end

end
