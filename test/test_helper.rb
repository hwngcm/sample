ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # def full_title(page_title = '')
  #   base_title = "Ruby on Rails Tutorial Sample App"
  #   if page_title.empty?
  #     base_title
  #   else
  #     "#{page_title} | #{base_title}"
  #   end
  # end  

  # Add more helper methods to be used by all tests here...
end
