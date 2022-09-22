class Appointment  
  #Appointments Joins pets and handlers together for a many-to-many relationship

  #The appointments can be a walk or a drop-in visit
  attr_reader :id
  attr_accessor :request, :complete, :handler_id, :pet_id
  @@all = []
  def initialize(attributes = {})
    @id = @@all.length+1
    @request = attributes[:request]
    @complete = attributes[:complete]
    # Add pet_id and handler_id here and to attr_accessor
    @handler_id = attributes[:handler_id]
    @pet_id = attributes[:pet_id]
    
    @@all << self
  end 

  #Class methods
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

  #Instance methods
  def pet
    Pet.all.find{|p| p.id == self.pet_id}
  end 

  def handler
    Handler.all.find{|h| h.id == self.handler_id}
  end 

end