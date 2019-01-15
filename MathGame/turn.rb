
class Turn
  attr_reader :index, :play_list

  def initialize (p1, p2)
    @p1 = p1
    @p2 = p2
    @index = 0
    @play_list = [@p1, @p2]
  end

  def change_turn
    if @index == 1
      @index = 0
      return @index
    else
      @index = 1
      return @index
    end
  end

  def current_player
    @play_list[@index]
  end
end



