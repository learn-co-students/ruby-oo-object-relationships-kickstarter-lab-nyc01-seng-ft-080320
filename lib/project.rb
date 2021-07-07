class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
        ProjectBacker.all.filter do |proj_backer_instance|  
            proj_backer_instance.project == self 
        end.map do |proj_backer_instance| 
            proj_backer_instance.backer
        end 
    end 
    
end  