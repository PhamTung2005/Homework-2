require 'Selenium-Webdriver'
require 'WebDrivers'

browser = Selenium::WebDriver.for :chrome

browser.get "https://www.google.com/"

browser.quit
