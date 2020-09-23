require 'Selenium-Webdriver'
require 'Webdrivers'

browser = Selenium::WebDriver.for :chrome

browser.get "https://www.google.com/"

browser.manage.window.resize_to(1280, 720)

verify_title = browser.title

puts "Title of the page is: #{verify_title}"

sleep 2

browser.quit