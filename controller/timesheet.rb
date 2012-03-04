class TimesheetController < Controller
  def initialize(repository)
    @repository = repository
  end
  def index
    @repository.find_all Timesheet
  end
end
