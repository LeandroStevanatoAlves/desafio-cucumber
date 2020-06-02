require 'selenium-webdriver'

case ENV['ambiente']
when 'docker'
    # configura o driver para modo headless
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')
    $driver = Selenium::WebDriver.for :chrome, options: options
else
    $driver = Selenium::WebDriver.for :chrome
end

$driver.manage.timeouts.implicit_wait = 10 # segundos
$wait = Selenium::WebDriver::Wait.new(:timeout => 15)