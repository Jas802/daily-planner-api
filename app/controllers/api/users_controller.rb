module Api
    class UsersController < ApplicationController
        def index
            users = User.all
            options = {
                include: [:events]
            }
            render json: UserSerializer.new(users, events)
        end

        def show
            user = User.find(params[:id])
            render json: {status: 'SUCCESS', message:'Loaded user', data: user},status: :ok
        end

        def create
            user = User.new(user_params)
            if user.save
                render json: {staus: 'SUCCESS', message: 'Saved user', data: user}, status: :ok
            else
                render json: {status: 'ERROR', message: 'User not saved',
                data: user.errors}, status: unprocessable_entity    
            end
        end

        def update
            user = User.new(user_params)
            if user.update
                render json: {staus: 'SUCCESS', message: 'Updated user', data: user}, status: :ok
            else
                render json: {status: 'ERROR', message: 'User not updated',
                data: user.errors}, status: unprocessable_entity    
            end
        end

        def destroy
            user = User.find(params[:id])
            user.
            
            render json: {status: 'SUCCESS', message: 'Deleted user', data: user}, status: :ok
        end

        private

        def user_params
            params.permit(:username)
        end
    end
end