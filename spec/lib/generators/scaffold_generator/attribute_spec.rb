require File.expand_path(File.dirname(__FILE__) + "/../../../spec_helper")

describe Attribute do

  context "supported types" do
    it "should support boolean" do
      Attribute.valid_types.include?("boolean").should be_true
    end

    it "should support double" do
      Attribute.valid_types.include?("double").should be_true
    end

    it "should support string" do
      Attribute.valid_types.include?("string").should be_true
    end

    it "should support float" do
      Attribute.valid_types.include?("float").should be_true
    end

    it "should support short" do
      Attribute.valid_types.include?("short").should be_true
    end

    it "should support integer" do
      Attribute.valid_types.include?("integer").should be_true
    end

    it "should support long" do
      Attribute.valid_types.include?("long").should be_true
    end

    it "should support text" do
      Attribute.valid_types.include?("text").should be_true
    end
  end

  context "html_input" do
    it "should know html input to boolean" do
      Attribute.new("flag", "boolean").html_input.should eql("checkbox")
    end

    it "should know html input to string" do
      Attribute.new("name", "string").html_input.should eql("text")
    end

    it "should know html input to double" do
      Attribute.new("name", "double").html_input.should eql("text")
    end

    it "should know html input to float" do
      Attribute.new("name", "float").html_input.should eql("text")
    end

    it "should know html input to short" do
      Attribute.new("name", "short").html_input.should eql("text")
    end

    it "should know html input to integer" do
      Attribute.new("name", "integer").html_input.should eql("text")
    end

    it "should know html input to long" do
      Attribute.new("name", "long").html_input.should eql("text")
    end

    it "should know html input to text" do
      Attribute.new("name", "text").html_input.should eql("textarea")
    end
  end

  context "java type" do
    it "should know corret java type to boolean" do
      Attribute.new("flag", "boolean").java_type.should eql("boolean")
    end

    it "should know corret java type to text" do
      Attribute.new("description", "text").java_type.should eql("String")
    end

    it "should know corret java type to string" do
      Attribute.new("name", "string").java_type.should eql("String")
    end

    it "should know corret java type to double" do
      Attribute.new("name", "double").java_type.should eql("Double")
    end

    it "should know corret java type to float" do
      Attribute.new("name", "float").java_type.should eql("Float")
    end

    it "should know corret java type to short" do
      Attribute.new("name", "short").java_type.should eql("Short")
    end

    it "should know corret java type to integer" do
      Attribute.new("name", "integer").java_type.should eql("Integer")
    end

    it "should know corret java type to long" do
      Attribute.new("name", "long").java_type.should eql("Long")
    end
  end

  it "should be boolean when type is boolean" do
    Attribute.new("flag", "boolean").boolean?.should be_true
  end

  it "cannot be boolean otherwise" do
    Attribute.new("flag", "short").boolean?.should be_false
  end
end
