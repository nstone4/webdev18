# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {

:address => 'smtp.sendgrid.net',

:port => '587',

:authentication => :plain,

:user_name => ENV['apikey'],

:password => ENV['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'],

:domain => 'heroku.com',

:enable_starttls_auto => true

}