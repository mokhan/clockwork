
class Greeting
  def say
    "hello"
  end
  def bye
    "bye"
  end
end

describe Greeting do
  it "should say hello" do
    Greeting.new.say.should == "hello"
  end
  it "should say goodbye" do
    Greeting.new.bye.should == 'bye'
  end
end
