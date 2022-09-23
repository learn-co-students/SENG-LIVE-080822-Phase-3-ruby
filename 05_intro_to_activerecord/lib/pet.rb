class Pet < ActiveRecord::Base
    # fetch('/pets)
    # get '/pets do
    #   Pet.all
    # end 

    # fetch('/pets',{method:'POST...})
    # post '/pets'
    #   Pet.create(params)
    # end
    
    #CREATE
        # Pet.new -> creates a new instance
        # pet#save -> will save the instance to the db
        # Pet.create -> creates and saves an instance to the db
    #READ
        #Pet.all -> return all of the pets in the db
        #Pet.find -> returns a pet based on its id
        #Pet.find_by(name:'rose') -> returns a pet based on an attribute 
        #Pet.where('age > 5')/ ('age > ?',5) -> finds the pets of the matching condition
        #Pet.order
        #Pet.pluck
        #Pet.count
        #Pet.first

    #UPDATE
        #pet#update -> updates an attribute on a single pet in the db
        #Pet.update -> updates an attribute on all pets in the db
    #DELETE
        #pet#destroy
        #Pet.destroy_all

end 