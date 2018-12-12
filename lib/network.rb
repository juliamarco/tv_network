class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    characters = @shows.map do |show|
      show.characters
    end
    max_salary = characters.flatten.max_by do |character|
      character.salary
    end
    max_salary.actor
  end


  end
