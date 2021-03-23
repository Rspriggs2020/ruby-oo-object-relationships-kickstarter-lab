
class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
       project_instances = ProjectBacker.all.select do |backer|
            backer.project == self
        end
        project_instances.map do |pro_in|
            pro_in.backer
        end
    end

end