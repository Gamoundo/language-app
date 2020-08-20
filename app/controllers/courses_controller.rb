class CoursesController < ApplicationController
    before_action :authorized, except: [:index, :show]

    def index
        courses = Course.all
        render json: courses
    end

    def show
        course = Course.find_by(id: params[:id])
        render json: course
    end
end
