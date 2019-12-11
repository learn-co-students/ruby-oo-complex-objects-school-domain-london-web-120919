# code here!
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @name = name
        @roster[grade] ||= @roster[grade] = []
        @roster[grade].push(name)
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each {|k, v| @roster[k] = v.sort}
    end
end