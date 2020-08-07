class Project

    attr_reader :title

    @@all = []

    def self.all
        @@all
    end

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backed = ProjectBacker.all.select {|pb| pb.project == self}
        backed.map {|projects| projects.backer}
    end
end


# def backed_projects
#     find_projects.map {|pb| pb.project}
    
# end

# def find_projects
#     ProjectBacker.all.select {|project| project.backer == self}
# end
