require 'Selenium-Webdriver'
require 'Webdrivers'

browser = Selenium::WebDriver.for :chrome

browser.get "https://www.google.com/"

browser.manage.window.resize_to(1280, 720)

getPageSource = browser.page_source

puts "The current page source is: #{getPageSource}"

sleep 2

browser.quit