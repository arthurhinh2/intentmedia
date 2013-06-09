require 'capybara/cucumber'
require 'capybara/session'
require 'gizmo'


if ENV['TEST_ENV'] == 'production'
  BASE_URL="http://www.intentmedia.com"
end

Capybara.default_driver = :selenium
Capybara.run_server = false
Capybara.default_selector = :css
Capybara.default_wait_time = 30
Capybara.ignore_hidden_elements = false

World(Gizmo::Helpers)

Gizmo.configure do |config|
  config.mixin_dir = '/pages'
end

