require 'spec_helper'

class SidebarHelper
  include LybSidebar::Helper
end

describe SidebarHelper do
  describe ".render_sidebar" do
    it "should call content_for(:sidebar)" do
      subject.should_receive(:content_for).with(:sidebar)
      
      subject.render_sidebar
    end
  end
end
