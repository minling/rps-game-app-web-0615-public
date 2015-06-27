class RPSGame

  attr_accessor :computer_play, :choice

  class PlayTypeError < StandardError
  end

  WINNINGMATCHES ={
    :rock => :scissors,
    :paper => :rock,
    :scissors => :paper
  }

  TIEDMATCHES ={
    :rock => :rock,
    :paper => :paper,
    :scissors => :scissors
  }

  LOSTMATCHES ={
    :rock => :paper,
    :paper => :scissors,
    :scissors => :rock
  }

  def initialize(choice)
    if !(choice == :rock || choice == :paper || choice == :scissors)
       raise PlayTypeError
    end
    @choice = choice 
    computer_turn 
  end

  def self.valid_play?(choice)
    if choice == :rock 
      true
    elsif choice == :paper 
      true
    elsif choice == :scissors
      true
    else 
      false
    end
  end

  def computer_play
    @computer_play
  end

  def computer_turn
    @computer_play = [:rock, :paper, :scissors].sample
  end

  def won?
    @computer_play = computer_play
    computer = @computer_play
    player = @choice
 
    if WINNINGMATCHES[player] == computer 
      true
    else
      false
    end 
  end

  def tied?
    @computer_play = computer_play
    computer = @computer_play
    player = @choice
 
    if TIEDMATCHES[player] == computer 
      true
    else
      false
    end 
  end

  def lost?
    @computer_play = computer_play
    computer = @computer_play
    player = @choice
 
    if LOSTMATCHES[player] == computer 
      true
    else
      false
    end 
  end

  def result
  
    if won?
      "You won!"
    elsif tied?
      "You are tied!"
    elsif lost?
      "You lost!"
    end
  end 
end

