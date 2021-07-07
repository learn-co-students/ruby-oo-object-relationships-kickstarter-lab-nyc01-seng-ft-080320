class Backer 
  attr_reader :name
  def initialize(name)
    @name = name
  end 
  
  def back_project(project)
    ProjectBacker.new(project, self)
  end 
  
  def backed_projects 
    pb = ProjectBacker.all.select do |projectbacker|
       projectbacker.backer == self 
    end 
    pb.map do |pb_instance|
      pb_instance.project
    end 
    
  end 
end 