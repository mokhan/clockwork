describe ProjectController do
  before do
    @query_builder = fake
    @sut = ProjectController.new(@query_builder)
  end
  describe "when loading all timesheets" do
    it "should return all the timesheets" do
      @results[0].must_equal(@project)
      @results.must_equal(@projects)
    end
    before do
      @projects = []
      @project = fake
      @projects << @project
      query = fake
      @query_builder.stub(:build).with(FindAllProjects).and_return(query)
      query.stub(:fetch).ignore_arg.and_return(@projects)
      @results = @sut.index
    end
  end
end
