require 'spec_helper'
describe "Configuration" do 
  it "should have setter & getter method for any attributes " do 
	  c = Configuration.new
		c.test.should ==  nil
		c.test = 'test'
		c.test.should == 'test'
	end

	it "should support inheritable_copy" do 
	  c = Configuration.new
		c.test = 'test'
		inherited_c = c.inheritable_copy
		inherited_c.test.should == 'test'
	end
	
	it "should support configure" do 
	end
end
