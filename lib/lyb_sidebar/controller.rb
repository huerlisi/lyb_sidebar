module LybSidebar
  module Controller
    module ClassMethods
      def sidebar(options = true)
        if options.is_a? TrueClass
          @@sidebars = [controller_name]
        end
      end
    end
  end
end
