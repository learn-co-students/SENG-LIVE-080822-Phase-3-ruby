class Review < ActiveRecord::Base
    belongs_to :owner
    belongs_to :handler
end 