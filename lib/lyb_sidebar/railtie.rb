require 'lyb_sidebar'
require 'rails'

module LybSidebar
  class Railtie < Rails::Engine
    initializer :after_initialize do
      ActionController::Base.helper LybSidebar::Helper

      ActionController::Base.extend(LybSidebar::ClassMethods)
    end
  end
end
