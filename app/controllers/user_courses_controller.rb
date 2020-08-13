class UserCoursesController < ApplicationController
    before_action :authorized, except: [:index]
    
    def index
        usercourse = UserCourse.all
        render json: usercourse
    end
    
    def create
        
        
        UserCourse.create(user_id: params[:id], course_id: course.id)
       
       user = User.find(params[:id])
       render json: user.courses
   end
end
