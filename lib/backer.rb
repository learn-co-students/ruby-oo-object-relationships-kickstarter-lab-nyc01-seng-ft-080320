class Backer
    
    attr_reader :name


    def initialize(name)
        @name = name;
        
    end


    #back_project is an instance method that accepts a project as an argument and creates a ProjectBacker, associating the project with this backer
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    #backed_projects returns an array of projects associated with this Backer instance
    def backed_projects
        project_backer = ProjectBacker.all.filter {|pback| pback.backer == self}

        project_backer.map {|pb| pb.project}
    end
end