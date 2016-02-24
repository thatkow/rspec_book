class Output
	def messages
		@messages ||= []
	end
	def puts(message)
		messages << message
		@response = message
	end	
	def responses
		@response
	end
end

output = Output.new

Given(/^I am not yet playing$/) do
 	# pending # Write code here that turns the phrase above into concrete actions
end

When(/^I start a new game$/) do
 	game = Codebreaker::Game.new(output)
 	game.start('1234')
end

Then(/^I should see "([^"]*)"$/) do |message|
 	expect(output.messages).to include(message)
end

Given(/^the secret code is "([^"]*)"$/) do |secret|
	@game = Codebreaker::Game.new(output)
	@game.start(secret)
end

When(/^I guess "([^"]*)"$/) do |guess|
  	@game.guess(guess)
end

Then(/^the mark should be "([^"]*)"$/) do |mark|
  	expect(output.responses).to eq(mark)
end
