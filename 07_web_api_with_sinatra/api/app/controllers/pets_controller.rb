class PetsController < ApplicationController
    #Read
    get '/pets' do 
       pets = Pet.all
       pets.to_json
    end 

    get '/pets/:id' do
        pet = Pet.find(params[:id])
        pet.to_json
    end 
    #Create
    post '/pets' do 
        pet = Pet.create(pet_params)
        status 201
        pet.to_json
    end 
    #Update
    patch '/pets/:id' do
        pet = Pet.find(params[:id])
        pet.update(pet_params)
        pet.to_json
    end 
    #Delete
    delete '/pets/:id' do
        pet = Pet.find(params[:id])
        pet.destroy 
        status 204 
    end 

    get '/pets/:id/recent_requests' do
        pet = Pet.find(params[:id])
        pet.appointments.where("time > ?", 1.hour.ago).to_json
    end 
    
    private

    def pet_params
        {name:params[:name], age:params[:age], breed:params[:breed], image_url:params[:image_url]}
    end 


end 