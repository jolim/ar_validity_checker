require 'ar_validity_checker'
require 'rails'
module MyPlugin
  class Railtie < Rails::Railtie
    railtie_name :ar_validity_checker

    rake_tasks do
      load "tasks/ar_validity_checker.rake"
    end
  end
end