describe FindAllProjects do
  before(:each) do
    @repository = fake
    @sut = FindAllProjects.new(@repository)
  end
  describe "when loading all the projects" do
    it "should return them all" do
      @results.must_include @project
    end
    before do
      @projects = []
      @project = fake
      @projects << @project
      @repository.stub(:find_all).with(ProjectDTO).and_return(@projects)
      @results = @sut.fetch
    end
  end
end
