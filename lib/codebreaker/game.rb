module Codebreaker
	class Game
		def initialize(output)
			@output = output
		end
		def start(secret)
			@secret = secret
			@secret_split = @secret.split("")
			@output.puts 'Welcome to Codebreaker!'
			@output.puts 'Enter guess:'
		end
		def guess(guess)
			exact_match = 0
			number_match = 0

			@secret.split("").zip(guess.split("")).each do |secret_number,guess_number|
				if secret_number == guess_number
					exact_match += 1
				else
					number_match += 1 if @secret_split.include? guess_number	
				end
			end
			@output.puts ( "+" * exact_match ) + ( "-" * number_match )
		end
	end
end