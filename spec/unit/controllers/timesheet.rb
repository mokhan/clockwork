require 'developwithpassion_fakes'

class TimesheetController
  def initialize(repository)
    @repository = repository
  end
  def index
    @repository.find_all Timesheet
  end
end
class Timesheet
end
describe TimesheetController do
  before do
    @repository = fake
    @sut = TimesheetController.new(@repository)
  end
  describe "when loading all timesheets" do
    it "should return all the timesheets" do
      @results[0].must_equal(@timesheet)
    end
    before do
      timesheets = []
      @timesheet = fake
      timesheets << @timesheet
      @repository.stub(:find_all).with(Timesheet).and_return(timesheets)
      @results = @sut.index
    end
  end
end
