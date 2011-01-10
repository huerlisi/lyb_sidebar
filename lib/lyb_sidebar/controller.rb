module LybSidebar
  module Controller
    extend ActiveSupport::Concern
    
    included do
      class_inheritable_accessor :sidebars
    end

    module ClassMethods
      def sidebar(options = true)
        if options.is_a? TrueClass
          self.sidebars = ["#{controller_name}/sidebar"]
        end
      end
    end
  end
end
