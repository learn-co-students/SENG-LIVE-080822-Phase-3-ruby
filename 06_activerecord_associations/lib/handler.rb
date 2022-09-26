class Handler < ActiveRecord::Base
   has_many :appointments
   has_many :pets, through: :appointments

   has_many :reviews
   has_many :owners, through: :reviews 
end 