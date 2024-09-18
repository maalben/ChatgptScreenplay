# frozen_string_literal: true

class NavigateTo
  def initialize(page_url)
    @page_url = page_url
  end

  def perform(actor)
    ability = actor.has_ability?(BrowseTheWeb)
    if ability
      ability.visit(@page_url)
    else
      raise "The actor does not have the ability to browse the web."
    end
  end
end