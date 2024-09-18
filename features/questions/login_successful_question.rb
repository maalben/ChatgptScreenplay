# frozen_string_literal: true

module Questions
  class LoginSuccessfulQuestion
    def ask(actor)
      session = actor.has_ability?(BrowseTheWeb)

      # Asegúrate de que session sea la sesión actual de Capybara
      raise 'BrowseTheWeb ability not found!' unless session

      # Verifica si el elemento con el selector dado es visible en la página
      session.has_selector?('.pt-4 > .element-header')
    end
  end
end