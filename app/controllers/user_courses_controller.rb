class UserCoursesController < ApplicationController
    before_action :authorized, except: [:index, :show, :destroy, :create]
    
    def index
        usercourse = UserCourse.all
        render json: usercourse
    end
    
    def create
        # byebug
        # user = User.find(params[:user_id]) 
       usercourse = UserCourse.create(user_id: params[:user_id], course_id: params[:course_id])
       
       if usercourse.valid?
        render json: usercourse
       else
        render json: {error: usercourse.errors.full_messages}, status: :bad_request  
       end
       
   end

   def show
    usercourse = UserCourse.all
    # byebug
    user = User.find(params[:id])
    
    
        render json: user.courses
    
   end

   def destroy
    # user = User.all
    # id = params[:id].to_i
    # course= Course.all
    # byebug
    user = User.find_by(id: params[:user_id])
    usercourse = user.user_courses.find { |course| course.course_id == params[:course_id] }
    # byebug
    usercourse.destroy
    
    # usercourse = UserCourse.find(user_id: params[:user_id], course_id: params[:course_id])
    
    
   end
end
