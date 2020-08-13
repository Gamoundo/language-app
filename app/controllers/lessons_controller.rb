class LessonsController < ApplicationController
    before_action :authorized, except: [:index]
    
    def index
        lessons = Lesson.all
        render json: lessons
    end
end
