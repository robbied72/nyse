# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
NYSE::Application.initialize!

DateTime::DATE_FORMATS[:short]="short %Y-%m-%d %H:%M:%S"

Time::DATE_FORMATS[:short] = "short %Y-%m-%d %H:%M:%S"

Date::DATE_FORMATS[:short] = "short %Y-%m-%d"