require 'watir'
require 'pry'
require 'rspec/expectations'
require 'yaml'

# #require File.join(File.dirname(__FILE__), '..', '..', 'data', 'tumblr_login')
# Dir["../pages/*_page.rb"].each {|file| require file}

FILE = YAML::load_file("data/slack_login.yml")
