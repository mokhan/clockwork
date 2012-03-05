class FindAllProjects
  def initialize(repository)
    @repository = repository
  end
  def fetch
    @repository.find_all(ProjectDTO)
  end
end
