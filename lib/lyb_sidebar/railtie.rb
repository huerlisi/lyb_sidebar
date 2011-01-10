require 'lyb_sidebar'
require 'rails'

module LybSidebar
  class Railtie < Rails::Engine
    initializer :after_initialize do
      ActionController::Base.helper LybSidebar::Helper

      ActionController::Base.send(:include, LybSidebar::Controller)
    end
  end
end
