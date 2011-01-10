module LybSidebar
  module Helper
    # Tag support
    def tag_filter(model = nil, filters = nil, scope = :tagged_with)
      model ||= controller_name.singularize.camelize.constantize
      filters ||= model.top_tags

      render 'layouts/tag_filter', :filters => filters, :scope => scope
    end
    
    def sidebar_tag_filter
      content_for :sidebar do
        tag_filter
      end
    end

    # Sidebar
    def prepare_sidebars
      return if controller.sidebars.nil?
      
      for partial in controller.sidebars
        render partial
      end
    end

    def render_sidebar
      content_for :sidebar
    end

    def render_sidebars
      prepare_sidebars
      render_sidebar
    end
  end
end
