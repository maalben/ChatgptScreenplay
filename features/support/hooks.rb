# frozen_string_literal: true

require 'report_builder'
require_relative 'actor'
require_relative 'abilities/browse_the_web'
require_relative '../tasks/navigate_to'
require_relative '../user_interfaces/login_page'
require_relative '../util/utilities'

timestamp = Utilities.timestamp

Before do
  @actor = Actor.new('Test User')
  @actor.can(BrowseTheWeb.new(Capybara.current_session))
end

After do |scenario|

  if scenario.failed?
    save_screenshot("../reports/screenshots/#{scenario.name}_#{timestamp}.png")
  end
  Capybara.reset_sessions!
end

at_exit do

  ReportBuilder.configure do |config|
    config.input_path = 'reports/report.json'
    config.report_path = "reports/report_#{timestamp}"
    config.report_types = [:html]
    config.report_title = 'Reporte de Pruebas Automatizadas'
    config.additional_info = { 'Project Name' => 'Test API', 'Report Generated' => Time.now }
    config.color = 'indigo'  # Color del reporte (puedes usar 'blue', 'green', 'red', etc.)
  end

  # Genera el reporte
  ReportBuilder.build_report


  Capybara.current_session.driver.quit
end