require 'spec_helper'

class BasicController < ActionController::Base
  extend LybSidebar::Controller::ClassMethods
end

describe BasicController do
  describe "#sidebar" do
    it "should add basic/sidebar" do
      BasicController.sidebar
      
      BasicController.sidebars.should == ['basic/sidebar']
    end
  end
end
