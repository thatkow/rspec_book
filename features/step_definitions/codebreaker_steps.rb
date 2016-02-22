class Output
	def messages
		@messages ||= []
	end
	def puts(message)
		messages << message
	end
end

output = Output.new

Given(/^I am not yet playing$/) do
 	# pending # Write code here that turns the phrase above into concrete actions
end

When(/^I start a new game$/) do
 	game = Codebreaker::Game.new(output)
 	game.start
end

Then(/^I should see "([^"]*)"$/) do |message|
 	expect(output.messages).to include(message)
end

Given(/^the secret code is "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I guess "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the mark should be "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
