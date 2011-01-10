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
    def render_sidebar
      content_for :sidebar
    end

    def prepare_sidebars
      for partial in controller.sidebars
        render partial
      end
    end
  end
end
