# frozen_string_literal: true

Given('the user opens the login page') do
  @actor.perform(NavigateTo.new('https://demo.applitools.com/hackathonV2.html'))
end

When('the user logs in with valid credentials') do
  @actor.attempts_to(Tasks::LoginTask.with_credentials('testuser', 'testuser'))
end

Then('the user should see the main dashboard') do
  expect(@actor.asks(Questions::LoginSuccessfulQuestion.new)).to be true
end