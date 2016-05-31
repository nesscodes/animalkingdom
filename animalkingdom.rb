
module Flight

  def fly
    puts "I'm a parrot, I'm flying!"
  end

end


class Mammal

  def initialize()
    @warm_blood = true
    @eyes = 2
  end

end


class Amphibians
  
  def initialize()
    @cold_blooded = true
  end

end

class Bird
  def initialize
    @feathers = true
  end

end

class Parrot

  include Flight
  def initialize
    @flight = true
  end
end


class Animal < Mammal
  def initialize
    @fur = true
  end

  def get_haircut
    # this only works if we have @fur=true
  end

end


class Primate < Animal
  def initialize
    @num_legs = 2
  end

end


class Chimpanzee < Primate
  
  def initialize
    @height = 1.2
  end

end


class Bat < Mammal

  attr_reader :wing_type, :warm_blood

  def initialize
    super 
    self.wing_type = "webbed"
  end

  def to_s
    "I am a bat, and bats' blood-warmness is: (#@warm_blood)"
  end

  def wing_type=(wt)
    @wing_type = wt
  end

end


bert = Bat.new()
puts bert
puts bert.wing_type
bert.wing_type = "fluffy"
puts bert.wing_type
