require 'pry'

class Backer

    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        find_projects.map {|pb| pb.project}
        
    end

    def find_projects
        ProjectBacker.all.select {|project| project.backer == self}
    end
    
end