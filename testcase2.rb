require 'Selenium-Webdriver'
require 'Webdrivers'

 browser = Selenium::WebDriver.for :chrome

 browser.get "https://www.google.com/"

#  browser.manage.window.maximize
#  browser.manage.window.full_screen
 browser.manage.window.resize_to(600,500)
 sleep 2

 browser.quit