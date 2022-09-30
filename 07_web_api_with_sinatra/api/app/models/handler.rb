class Handler < ActiveRecord::Base
  has_many :appointments 
  has_many :pets, through: :appointments

  def self.most_appointments
    handler = self.all.max_by{|h| h.appointments.length}
    {handler:handler, appointments:handler.appointments.length}
  end 

  def self.most_pets 
    handler = self.all.max_by{|h| h.pets.uniq.length}
    {handler:handler, pets: handler.pets.uniq.pluck(:name)}
  end 
end