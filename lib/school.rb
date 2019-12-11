class School
    attr_reader :school, :student, :grade 
    attr_accessor :roster

    def initialize(school)
        @school = school
        @roster = {}
      end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] <<  student
    end 

    def grade(student_grade)
        roster.detect do |grade, student|
            if grade == student_grade
                return student
            end
        end
    end 

    def sort 
        roster.each {|grade, student| student.sort!}
    end 

end 