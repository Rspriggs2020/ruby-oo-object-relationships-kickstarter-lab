
class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        instances = ProjectBacker.all.select do |projects|
        projects.backer == self
        end
        instances.map do |pro|
            pro.project
        end
    end
   

  

end