class School

    attr_accessor :name, :roster

    def initialize (name)
        @name = name
        @roster = {}
    end

    def add_student (student, grade)
        if @roster[grade]
            @roster[grade] << student
        else
            @roster[grade] = []
            @roster[grade] << student
        end
    end

    def grade(grade)
        @roster[grade]
    end

    # print hash of all grades with names in each grade sorted by name
    # to do this we need to:
    # loop through each item in the hash
    # sort each array in the hash and save
    # return sorted hash

    def sort
        sorted_students = @roster.each { |grade, students|
            students.sort! 
            }
        sorted_students
    end

end