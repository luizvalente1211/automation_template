require 'cucumber'
require 'capybara/dsl'
require 'pry'
require 'httparty'
require 'selenium-webdriver'
require 'factory_bot'
require 'faker'
require 'rspec'
require 'yaml'
require_relative 'spec_helper/spec_rest'


CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yml")



World(REST, FactoryBot::Syntax::Methods)


# Capybara.configure do |config|
#     #selenium   selenium_chrome   selenium_chrome_healess
 
#      config.default_driver = :selenium_chrome_headless
#      config.default_max_wait_time = 15
#      Capybara.page.driver.browser.manage.window.maximize
     

#   end