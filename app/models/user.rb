class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true, uniqueness: { case_sensitive: false }
    has_many :usercourses
    has_many :courses, :through => :usercourses
end
