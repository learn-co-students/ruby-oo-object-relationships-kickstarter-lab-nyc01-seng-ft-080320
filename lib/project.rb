class Project

  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    pb = ProjectBacker.all.select do |project|
      project.project ==  self
    end
    pb.map do |pj_data|
      pj_data.backer
    end
  end

end