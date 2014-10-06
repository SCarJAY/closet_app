
require 'cucumber/rails'
Cucumber::Rails::Database.autorun_database_cleaner = false


ActionController::Base.allow_rescue = false


Cucumber::Rails::Database.javascript_strategy = :truncation

