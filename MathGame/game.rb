require './turn'
require './players'


class Game

  def initialize
    @P1 = Player.new("Player1")
    @P2 = Player.new("Player2")
    @turn = Turn.new(@P1, @P2)
    @ans = 0
    @playerlist = [@P1, @P2]
    @player_guess = ''
  end

  def play
    while game_continue?(@playerlist) do
      question = make_question
      currentP = @turn.current_player
      puts "#{currentP.log}: #{question}"
      @player_guess = currentP.make_guess.to_i
      if not check_answer
        currentP.life_down
        puts "#{currentP.log}: Seriously? No!"
      else
        puts "#{currentP.log}: YES! You are correct."
      end
      puts get_lives
      @turn.change_turn
      if game_continue?(@playerlist)
        puts "--------- NEW TURN ---------"
      end
    end
    end_game_summary

  end

  def make_question
    n1 = rand(1...10)
    n2 = rand(1...10)
    @ans = n1 + n2
    "#{n1} plus #{n2} equals....?"
  end

  def check_answer
    if @ans == @player_guess
      return true
    else
      return false
    end
  end


  def get_lives
    "P1: #{@P1.show_life} v.s P2: #{@P2.show_life}"
  end

  def game_continue?(list)
    list.each do |pp|
      if pp.life == 0
        return false
      end
    end
    return true
  end

  def end_game_summary
    @playerlist.each do |pp|
      if pp.life != 0
        puts "#{pp.log} wins with a score of #{pp.show_life}"
      end
    end
    puts "--------- Game Over ---------"
    puts "Thank you for playing"
  end

end