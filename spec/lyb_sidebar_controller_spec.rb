require 'spec_helper'

describe LybSidebar::Controller::ClassMethods do
  describe "#sidebar" do
    before do
      class BasicController < ActionController::Base
        extend LybSidebar::Controller::ClassMethods
      end
    end
    
    it "should add basic/sidebar" do
      BasicController.sidebar
      
      BasicController.sidebars.should == ['basic/sidebar']
    end
  end
  
  describe "#sidebars" do  
    it "should not be shared between subclasses" do
      class Empty < ActionController::Base
        extend LybSidebar::Controller::ClassMethods
      end
      class A < Empty
        sidebar
      end
      class B < Empty
        sidebar
      end
      
      A.sidebars.should == ['a/sidebar']
      B.sidebars.should == ['b/sidebar']
      Empty.sidebars.should == nil
    end

    it "should be inherited" do
      class E < ActionController::Base
        extend LybSidebar::Controller::ClassMethods
        sidebar
      end
      class A1 < E
        sidebar
      end
      class B1 < E
      end
      
      E.sidebars.should == ['e/sidebar']
      A1.sidebars.should == ['a1/sidebar']
      B1.sidebars.should == ['e/sidebar']
    end
  end
end
