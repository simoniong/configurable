require 'spec_helper'
class A
  include Configurable
end

class B < A
end

describe "Included Configurable Class" do 
	  it "should respond_to config" do 
		  A.should respond_to :config
		end

		it "should respond_to configure" do 
		  A.should respond_to :configure
		end

		it "should able to set config in configure" do 
		  A.configure do |c|
			  c.testA = 'testA'
				c.testB = 'testB'
		  end
			A.config.testA.should == 'testA'
			A.config.testB.should == 'testB'
		end
end

describe "SubClass of Included Configurable Class" do 
   it "should respond_to config" do 
	   B.should respond_to :config
	 end 

	 it "should inherite SuperClass's config" do 
	   A.config.test = 'test'
		 B.config.test.should == 'test'
	 end
end

