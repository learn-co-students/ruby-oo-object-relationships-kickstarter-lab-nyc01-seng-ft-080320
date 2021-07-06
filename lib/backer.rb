class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end
    
    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.reduce([]) do |collected_projects, project_backer|
            collected_projects.push(project_backer.project) if project_backer.backer == self; collected_projects
        end

    end
endle