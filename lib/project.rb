class Project
    attr_accessor :backer
    attr_reader :title;

   

    def initialize(title)
        @title = title;
        
    end

   

    #add_backer is an instance method that accepts a backer as an argument and creates a ProjectBacker, associating the backer with this project
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    #backers returns an array of backers associated with this Project instance
    def backers
        pbacker = ProjectBacker.all.filter {|backer| backer.project == self}
        pbacker.map {|pb| pb.backer}
    end

end