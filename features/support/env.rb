require 'selenium-webdriver'

$driver = Selenium::WebDriver.for :chrome
$driver.manage.timeouts.implicit_wait = 10 # segundos
$wait = Selenium::WebDriver::Wait.new(:timeout => 15)