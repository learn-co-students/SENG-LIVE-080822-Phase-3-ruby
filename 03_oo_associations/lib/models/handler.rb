class Handler
    attr_reader :id
    attr_accessor :name, :email, :phone
    @@all = []
    def initialize(attributes={})
        @id = @@all.length+1
        @name = attributes[:name]
        @email = attributes[:email]
        @phone = attributes[:phone]
        @@all << self
    end 

    #.Class methods
    def self.all
        @@all
    end 

    def self.first
        @@all[0]
    end 
  
    def self.second
        @@all[1]
    end

    def self.by_index(idx)
        @@all[idx]
    end 

    def self.most_pets
        self.all.max_by(2){|h| h.pets.length}
    end 

    def self.most_pet_2
        counter = 0 
        handler = ''
        Handler.all.each do |h|
            if counter < h.pets.length
                counter = h.pets.length
                handler = h
            end 
        end 
        handler
    end 



    #Instance Methods
    def appointments
        Appointment.all.filter{|a| a.handler_id == self.id}
    end 

    def pets
        self.appointments.map{|a| Pet.all.find{|p| a.pet_id == p.id}}
    end 
     
end 