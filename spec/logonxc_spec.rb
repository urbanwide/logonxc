require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "LogoNxc" do

  def text
    <<-TEXT
      right 10
      rt 100
      repeat 10 [
        left 10
        lt 100
      ]
      forward 10
      fd 200
      back 10
      bk 200
    TEXT
  end

  describe ".parse" do
    before do
      @output = LogoNxc.parse(text).split("\n")
    end

    it "should translate right" do
      @output[0].should == "right(10);"
    end
    it "should translate rt" do
      @output[1].should == "right(100);"
    end
    it "should translate repeat" do
      @output[2].should == "repeat(10) {"
    end
    it "should translate left" do
      @output[3].should == "left(10);"
    end
    it "should translate lt" do
      @output[4].should == "left(100);"
    end
    it "should translate ]" do
      @output[5].should == "}"
    end
    it "should translate forward" do
      @output[6].should == "forward(10);"
    end
    it "should translate fd" do
      @output[7].should == "forward(200);"
    end
    it "should translate back" do
      @output[8].should == "back(10);"
    end
    it "should translate bk" do
      @output[9].should == "back(200);"
    end
  end

  describe ".nxc" do
    before do
      @output = LogoNxc.nxc(text)
    end
    it "should output nxc" do
      puts @output
    end
  end

end
