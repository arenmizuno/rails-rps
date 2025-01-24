class GameController < ApplicationController
  layout "application"
  def gohomepage
    render({ :template => "game_templates/home_page"})
  end

  def playrock
    @comp_move = ["rock", "paper", "scissors"].sample
    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else 
      @outcome = "won"
    end
    render({ :template => "game_templates/play_rock"})
  end

  def playpaper
    @comp_move = ["rock", "paper", "scissors"].sample
    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome = "tied"
    else 
      @outcome = "lost"
    end
    render({ :template => "game_templates/play_paper"})
  end

  def playscissors
    @comp_move = ["rock", "paper", "scissors"].sample
    if @comp_move == "rock"
      @outcome = "lost"
    elsif @comp_move == "paper"
      @outcome = "won"
    else 
      @outcome = "tied"
    end
    render({ :template => "game_templates/play_scissors"})
  end

end
