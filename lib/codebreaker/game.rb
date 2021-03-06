module Codebreaker
	class Game

		def initialize(output)
			@output = output
			@base = 6
		end
		def start(secret)
			@secret = secret
			@secret_split = @secret.split("")
			@output.puts 'Welcome to Codebreaker!'
			@output.puts 'Enter guess:'
		end
		def guess(guess)
			marker = Marker.new(@secret, guess)
			@output.puts 	'+'*marker.exact_match_count + 
							'-'*marker.number_match_count
		end		
	end
end