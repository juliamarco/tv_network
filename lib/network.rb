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

  def characters
    characters = @shows.map do |show|
      show.characters
    end
    return characters.flatten
  end

  def highest_paid_actor
    max_salary = characters.max_by do |character|
      character.salary
    end
    return max_salary.actor
  end

  def payroll
    payroll = {}
    characters.each do |character|
      payroll[character.actor] = character.salary
    end
    return payroll
  end

end
