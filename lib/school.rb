# code here!
class School
    attr_accessor :name, :roster
    

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name , grade)
        if @roster[grade]
            @roster[grade].push(name)
        else @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end
    
    def sort
        @roster.reduce({}){|memo, (key, value)|
            memo[key] = value.sort
            memo
            }.sort.to_h
    end



end