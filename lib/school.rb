require "pry"
class School
    attr_reader :school
    attr_accessor :roster
    def initialize(school)
        @school = school
        @roster = {}
    end
    def add_student(name,grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        # @roster.sort_by {|k,v| v}.to_h
        @roster.each { |k,value| value.sort!}
    end
        
    # binding.pry
    # 0  

end

