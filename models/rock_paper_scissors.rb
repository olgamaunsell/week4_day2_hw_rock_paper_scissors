class RockPaperScissors

  def initialize(ans1, ans2)
    @ans1 = ans1.downcase
    @ans2 = ans2.downcase
  end

  def play

    if !(@ans1 == "rock" || @ans1 == "paper" || @ans1 == "scissors")
      return nil
    end

    if !(@ans2 == "rock" || @ans1 == "paper" || @ans1 == "scissors")
      return nil
    end

    if (@ans1 == @ans2)
      #no winner
      return false
    elsif (@ans1 == "rock" && @ans2 == "scissors")
      return @ans1
    elsif (@ans1 == "rock" && @ans2 == "paper")
      return @ans2
    elsif (@ans1 == "paper" && @ans2 == "scissors")
      return @ans2
    elsif (@ans1 == "paper" && @ans2 == "rock")
      return @ans1
    elsif (@ans1 == "scissors" && @ans2 == "rock")
      return @ans2
    elsif (@ans1 == "scissors" && @ans2 == "paper")
      return @ans1
    end
  end
end
