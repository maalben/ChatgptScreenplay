# frozen_string_literal: true

class FillInField
  def initialize(selector, with:)
    @selector = selector
    @text = with
  end

  def perform(actor)
    session = actor.has_ability?(BrowseTheWeb)
    raise 'BrowseTheWeb ability not found!' unless session

    session.fill_in(@selector, with: @text)
  end
end