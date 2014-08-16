class GuessingGame
  def initialize(answer)
	@answer = answer.to_i    
  end
	def guess(guess)
		guess.to_i 
		@last_guess = guess
		if guess > @answer
			return :high
		elsif 	guess < @answer 
			return :low
		else
			return :correct
		end

	end
	 def solved?
	 	@last_guess == @answer
	 end
end

fuck = GuessingGame.new(12)

p fuck.solved?
p fuck.guess(122) 
p fuck.guess(2) 
p fuck.guess(12) 

p fuck.answer
p fuck.last_guess
p fuck.solved?