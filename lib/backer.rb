class Backer
    
    attr_reader :name

    def initialize(name)
        @name = name;
    end

    #back_project is an instance method that accepts a project as an argument and creates a ProjectBacker, associating the project with this backer
    def back_project(project)
        #do something
    end
    #backed_projects returns an array of projects associated with this Backer instance
    def backed_projects
        #do something
    end
end