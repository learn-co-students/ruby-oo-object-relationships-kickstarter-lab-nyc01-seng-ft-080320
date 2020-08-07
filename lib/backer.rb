class Backer    
    attr_reader :name 

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        #returns list of PB only
        res = ProjectBacker.all.filter do |pb|
            pb.backer == self 
        end
        #finds specific projects in pb 
        res.map do |el|
            el.project
        end
    end



end