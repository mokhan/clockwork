require 'developwithpassion_fakes'

class TimesheetController
  def initialize(blah)
    
  end
  def index
    []
  end
  
end
describe TimesheetController do
  before do
    @repository = fake
    @sut = TimesheetController.new(@repository)
  end
  describe "when loading all timesheets" do
    it "should return all the timesheets" do
      @results.should[0].equal(@timesheet)
    end
    before do
      timesheets = []
      @timesheet = fake
      timesheets << @timesheet
      @repository.stub(:find_all).ignore_arg.and_return(timesheets)
      @results = @sut.index
    end
  end

end
