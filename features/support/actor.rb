# frozen_string_literal: true

class Actor
  attr_accessor :name, :abilities

  def initialize(name)
    @name = name
    @abilities = []
  end

  def can(ability)
    @abilities << ability
  end

  def has_ability?(ability_class)
    @abilities.find { |ability| ability.is_a?(ability_class) }
  end

  def perform(task)
    task.perform(self)
  end

  def attempts_to(task)
    perform(task)
  end

  def asks(question)
    question.ask(self)
  end
end