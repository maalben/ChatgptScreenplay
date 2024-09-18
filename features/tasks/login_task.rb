# frozen_string_literal: true

module Tasks
  class LoginTask
    def self.with_credentials(username, password)
      new(username, password)
    end

    def initialize(username, password)
      @username = username
      @password = password
    end

    def perform(actor)
      actor.attempts_to(FillInField.new('username', with: @username))
      actor.attempts_to(FillInField.new('password', with: @password))
      actor.attempts_to(ClickElement.new('#log-in'))
    end
  end
end