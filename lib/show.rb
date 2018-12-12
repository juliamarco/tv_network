class Show
  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    salaries = @characters.map do |character|
      character.salary
    end
    salaries.inject(0) do |sum, num|
      sum + num
    end
  end



end
