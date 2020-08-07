class Backer
    attr_reader :name 

    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects
        backed_projects = ProjectBacker.all.filter { |proj_backer_instance|  proj_backer_instance.backer == self }
        backed_projects.map { |proj_backer_instance| proj_backer_instance.project}
    end 
end 