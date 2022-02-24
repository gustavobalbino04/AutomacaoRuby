require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require "faker"

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["CONFIG"]}"))

BROWSER = ENV["BROWSER"]

case ENV["BROWSER"]
when "chrome"
  @driver = :selenium_chrome
when "chrome_headless"
  @driver = :selenium_chrome_headless
else
  raise "navegador incorreto :("
end

Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = CONFIG["url"]
  config.default_max_wait_time = 10
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
