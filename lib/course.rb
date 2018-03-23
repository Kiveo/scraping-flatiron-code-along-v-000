
class Course
  attr_accessor :title, :schedule, :description
  attr_accessor :all

  @@all = []

  def initialize(title, schedule, description)
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

end
