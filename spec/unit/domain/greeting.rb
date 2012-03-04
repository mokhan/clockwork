describe Greeting do
  it "should say hello" do
    Greeting.new.say.must_equal "hello"
  end
  it "should say goodbye" do
    Greeting.new.bye.must_equal 'bye'
  end
end
