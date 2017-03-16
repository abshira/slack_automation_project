# Hooks File
require "watir"

browser = Watir::Browser.new :chrome

Before do
  @b = browser
  @b.cookies.clear
end

After do |scenario|
  # Execute after every scenario
end

at_exit do
  browser.quit
end
