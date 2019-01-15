
class Player
  attr_reader :name, :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def make_guess
    return gets.chomp
  end

  def life_down
    @life = @life -1
    return @life
  end

  def show_life
    output = "#{@life}/3"
  end

  def log
    return @name.to_s
  end
end
