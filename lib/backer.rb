require 'pry'

class Backer
    
    attr_reader :name
    # @@all = []

    def initialize(name)
        @name = name

        # @@all.push(self)
    end

    #install methods

    def back_project(project)
        ProjectBacker.new(project, self) 
    end

    def backed_projects
        my_project = []
        ProjectBacker.all.select do |project| 
            if project.backer == self
                my_project.push(project.project)
            end
        end
        my_project
    end

    #class methods
    # def self.all
    #     @@all
    # end
end
