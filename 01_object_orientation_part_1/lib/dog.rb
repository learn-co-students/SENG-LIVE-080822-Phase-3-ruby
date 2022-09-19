class Dog
  #getter -> read value 
  attr_reader :breed

  #setter -> set/update value
  # attr_writer :age

  # reads and sets
  attr_accessor :name, :age, :image_url

  # ✅ we should be able to create dogs with a name, age, breed, and image_url
  def initialize(name, age, breed, image_url)
    @name = name
    @age = age
    @breed = breed
    @image_url = image_url
  end 

  

  # ✅ we want to be able to access a dog's name, age, breed, image_url, last_fed_at and last_walked at times
  # def name
  #   @name
  # end 

  # def age
  #   @age 
  # end 

  # def age= value
  #   @age = value
  # end 
  # ✅ we want to be able to print details about a dog (this time including the last walked at and last fed at times)
  def print_dog
    puts "********************"
    puts "Name: #{@name}"
    puts "Age: #{@age}"
    puts "Breed: #{@breed}"
    puts "Image: #{@image_url}"
    puts "********************"
  end 

end