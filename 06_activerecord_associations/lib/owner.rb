class Owner < ActiveRecord::Base
    has_many :pets

    has_many :reviews
    has_many :handlers, through: :reviews
end 