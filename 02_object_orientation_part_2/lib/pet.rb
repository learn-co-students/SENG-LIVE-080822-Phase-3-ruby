  # ✅ 1. Create a class that will be inherited by dog and cat
class Pet
  attr_reader :breed
  attr_accessor :name, :age, :image_url, :last_fed_at, :last_walked_at
  # ✅ 1. class variable: all - holds all dogs we have saved
  #Class Variable
  @@counter = 0
  @@all = []
  def initialize(attributes) 
    @name = attributes[:name]
    @age = attributes[:age]
    @breed = attributes[:breed]
    @image_url = attributes[:image_url]
    @last_fed_at = nil
    @last_walked_at = nil
    @@all << self
  end
  # ✅ 2. class method: 'all' - retrieves the value of the class variable
  #class -> on the class Dog.all
  def self.all
    @@all
  end 

  def counter
    @@counter
  end 

  def counter_add(value)
    @@counter += value
  end 

  # ✅ 3. instance method: 'walk' - updates the dog's last_walked_at property to the current time
  def walk
    @last_walked_at = Time.now
  end 
  # ✅ 4. instance method: 'feed' - updates the dog's last_fed_at property to the current time
  def feed
    @last_fed_at = Time.now
  end 
  # print details about a dog (including the last walked at and last fed at times)
  def print
    puts
    puts self.name.green
    puts "  Age: #{self.age}"
    puts "  Breed: #{self.breed}"
    puts "  Image Url: #{self.image_url}"
    puts "  Last walked at: #{format_time(self.last_walked_at)}"
    puts "  Last fed at: #{format_time(self.last_fed_at)}"
    puts
  end

  # ✅ 5. private method: 'formatted_name' - returns the name of the dog color coded to indicate whether they are hungry or need a walk
  private 
  # ✅ 6. private method: 'format_time(time)' - accepts a time and returns it in a human readable format
  # should look like this: "Monday, 04/18/22 10:12 AM"
  def format_time(time)
    time.strftime('%l:%M %p on %Y-%m-%d')
  end 

end