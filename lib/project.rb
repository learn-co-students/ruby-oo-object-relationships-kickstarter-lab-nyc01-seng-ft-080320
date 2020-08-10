class Project
    
    attr_reader :title
    # @@all = []

    def initialize(title)
        @title = title

        # @@all.push(self)
    end

    #install methods

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        my_backers = []
        ProjectBacker.all.select do |project|
            if project.project == self
                my_backers.push(project.backer)
            end
        end
        my_backers.uniq
    end

    #class methods
    # def self.all
    #     @@all
    # end
end