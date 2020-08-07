class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    pb = ProjectBacker.all.select do |project|
      project.backer ==  self
    end
    pb.map do |pj_data|
      pj_data.project
    end
  end

end