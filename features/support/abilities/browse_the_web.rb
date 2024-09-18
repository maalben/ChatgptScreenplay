# frozen_string_literal: true

class BrowseTheWeb
  def initialize(session)
    @session = session
  end

  def visit(url)
    @session.visit(url)
  end

  def fill_in(field, with:)
    @session.fill_in(field, with: with)
  end

  def click_button(button)
    @session.click_button(button)
  end

  def has_content?(content)
    @session.has_content?(content)
  end

  def has_selector?(selector, **options)
    @session.has_selector?(selector, **options)
  end

  def find(selector, **options)
    @session.find(selector, **options)
  end

  def check(field)
    @session.check(field)
  end

  def uncheck(field)
    @session.uncheck(field)
  end

  def choose(option)
    @session.choose(option)
  end

  def select(option, from:)
    @session.select(option, from: from)
  end

  def has_field?(field, **options)
    @session.has_field?(field, **options)
  end

  def has_button?(button, **options)
    @session.has_button?(button, **options)
  end

  def has_link?(link, **options)
    @session.has_link?(link, **options)
  end

  def execute_script(script)
    @session.execute_script(script)
  end

  def wait_until(timeout = Capybara.default_max_wait_time)
    Capybara.using_wait_time(timeout) { yield }
  end

end