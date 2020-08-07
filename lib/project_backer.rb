class ProjectBacker 
    
    attr_reader :project, :backer
    @@all = []

    def initialize(project, backer)
        @project= project
        @backer = backer 

## self.  looking for method 
## @n  is variable itself 

        @@all << self
    end

    def self.all
        @@all
    end

end 