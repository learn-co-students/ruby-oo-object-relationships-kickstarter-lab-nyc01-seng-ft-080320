class ProjectBacker
    
    @@all = []
    attr_reader :project, :backer;

    def initialize(project, backer)
        @project = project;
        @backer = backer;
        save
    end
    
    def save
        @@all << self
    end

    def self.all
        @@all
    end
end