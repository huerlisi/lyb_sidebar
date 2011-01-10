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
  
  describe ".prepare_sidebars" do
    it "should render partials from Controller.sidebars" do
      subject.stub_chain(:controller, :sidebars).and_return(['basic/sidebar', 'simple/sidebar'])
      
      subject.should_receive(:render).with('basic/sidebar')
      subject.should_receive(:render).with('simple/sidebar')
      
      subject.prepare_sidebars
    end
  end
end
