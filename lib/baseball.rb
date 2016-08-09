class Baseball
  attr_reader :score

  def initialize
    @score = 0
  end

  def hit(home_runs)
    @score += home_runs
  end
end
