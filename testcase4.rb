require 'Selenium-Webdriver'
require 'Webdrivers'

browser = Selenium::WebDriver.for :chrome 

browser.get "https://www.google.com/"

browser.manage.window.full_screen

getUrl = browser.current_url

puts "URL is: #{getUrl}"

sleep 2

browser.quit