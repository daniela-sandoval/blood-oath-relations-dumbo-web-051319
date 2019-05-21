class Follower
  attr_reader :name, :age, :life_motto
  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def cults
    # iterate through a class to select if the class instance matches self
    new_array = BloodOath.all.select {|oath| oath.follower == self}
    new_array.map {|x| x.cult_name}
  end

  def join_cult(cult_arg)
    BloodOath.new(cult_arg, self)
  end

  def self.of_a_certain_age(age_arg)
    # iterate through all the followers age attribute and return those who are >=age
    self.all.select {|person| person.age >= age_arg}
  end

end
