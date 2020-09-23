require 'Selenium-Webdriver'
require 'WebDrivers'

browser = Selenium::WebDriver.for :chrome

browser.get "https://itmscoaching.herokuapp.com/form"

browser.manage.window.resize_to(1280,720)

firstName = browser.find_element(:id, "first-name")
firstName.send_keys "iTMS"

lastName = browser.find_element(:id, "last-name")
lastName.send_keys "Coaching"

jobTitle = browser.find_element(:id, "job-title")
jobTitle.send_keys "QA"

levelChoice = browser.find_element(:id, "radio-button-2").click

sexChoice = browser.find_element(:id, "checkbox-1").click 

yearsDropList = browser.find_element(:id, "select-menu")
selectYears = Selenium::WebDriver::Support::Select.new(yearsDropList)
selectYears.select_by(:text, "2-4")

datePicker = browser.find_element(:id, "datepicker")
datePicker.send_keys "27/10/2025"

submitButton = browser.find_element(:xpath, "//a[@class='btn btn-lg btn-primary']").click

sleep 2

browser.quit

