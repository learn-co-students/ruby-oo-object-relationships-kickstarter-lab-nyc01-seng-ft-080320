class Backer
    attr_reader :name 

    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects
        ProjectBacker.all.filter do |proj_backer_instance|  
            proj_backer_instance.backer == self 
        end.map do |proj_backer_instance| 
            proj_backer_instance.project
        end
    end 
end 