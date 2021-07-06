class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.reduce([]) do |collected_backers, project_backer|
            collected_backers.push(project_backer.backer) if project_backer.project == self; collected_backers
        end
    end
end