class Project 
  attr_reader :title
  
  def initialize(title)
    @title = title
  end
  
  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end 
  
  def backers 
    pb = ProjectBacker.all.select do |projectbacker|
      projectbacker.project == self 
    end
    pb.map do |pb_instance|
      pb_instance.backer
    end
  end 
end 