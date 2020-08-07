class Project
    attr_reader :title;

    def initialize(title)
        @title = title;
    end
    #add_backer is an instance method that accepts a backer as an argument and creates a ProjectBacker, associating the backer with this project
    def add_backer(backer)
        #do something
    end
    #backers returns an array of backers associated with this Project instance
    def backers
        #do something
    end

end