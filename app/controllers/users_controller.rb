class UsersController < ApplicationController
    before_action :authorized, only: [:auto_login]


    def index
        users = User.all
         render json: users
    end
    
    def create
        # byebug
        @user = User.create(username: params['username'], password: params['password'])
        if @user.valid?
            token = encode_token({user_id: @user.id})
            render json: {user: @user, token: token}
        else
             render json: {error: "Insufficient credentials"}
        end
    end

    def login
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            token = encode_token({user_id: @user.id})
            render json: {user: @user, token: token}
        else
             render json: {error: "Insufficient credentials"} 
        end
    end

    def update
        user = User.find_by(id: params[:id])
        user.username = params[:username]
        user.save
        render json: user
    end

    def auto_login
        render json: @user
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end
    
    private
    
    def user_params
        params.permit(:user, :username, :password)
    end

end
