class TaskController < ApplicationController
    skip_before_action :verify_authenticity_token

        def read
            render json: Task.all
        end
        def index
            if params[:id]
                users=Task.find(params[:id])
            elsif
                users=Task.all
            end
            render json: users
        end
    
        def create
            users=Task.create(name: params[:name],email: params[:email], phone: params[:phone], password: params[:password])
            render json: users
        end
    
        def delete
            Task.destroy(params[:id])
        end

        def check
            users=Task.find_by(email: params[:email])
            if users.present?
                if users.authenticate(params[:password])
                render html: "Correct password"
                elsif
                render html: "incorrect password"
                end
            elsif 
                    render html: "Not found"
            end
        end

        def update_password
            users=Task.find_by(email: params[:email])
            if users.present?
                if users.authenticate(params[:password])
                    users.update(password: params[:newpassword])
                    render html: "password updated"
                elsif
                    render html: "Enter correct old password"
                end
            elsif 
                render html: "User not found"
            end
        end
end
