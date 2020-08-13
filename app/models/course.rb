class Course < ApplicationRecord
    has_many :usercourses
    has_many :users, :through => :usercourses
    has_many :lessons
end
