# frozen_string_literal: true

class ClickElement
  include Capybara::DSL

  def initialize(selector)
    @selector = selector
  end

  def perform(actor)
    # Usamos el actor para acceder a la habilidad de navegación web
    browse_the_web = actor.has_ability?(BrowseTheWeb)
    raise "Actor does not have BrowseTheWeb ability" unless browse_the_web

    browse_the_web.find(@selector).click
  end
end