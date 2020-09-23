require 'Selenium-Webdriver'
require 'Webdrivers'

browser = Selenium::WebDriver.for :chrome

browser.get "https://www.google.com/"

browser.manage.window.resize_to(1280, 720)

search_box = browser.find_element(:name, "q")

search_box.send_keys "iTMS Coaching", :enter

getTitle = browser.title
puts "The Title is: #{getTitle}"

sleep 2

browser.quit
