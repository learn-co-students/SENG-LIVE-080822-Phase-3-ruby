class Cat < Pet
  def initialize(attributes)
    super(attributes)
    @indoor = attributes[:indoor]
    @drop_in_visit = nil
  end 

  def print
    super
    puts "  Indoor: true"
  end 

end 