class ProjectController < Controller
  def initialize(query_builder)
    @query_builder = query_builder 
  end
  def index
    @query_builder.build(FindAllProjects).fetch
  end
end
class FindAllProjects

end
