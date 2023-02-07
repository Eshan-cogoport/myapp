class UsersController < ApplicationController
        skip_before_action :verify_authenticity_token
    
        def read
            render json: User.all
        end
        def index
            if params[:id]
                users=User.find(params[:id])
            elsif
                users=User.all
            end
            render json: users
        end
    
        def create
            users=User.create(name: params[:name],email: params[:email], phone: params[:phone], password: params[:password])
            render json: users
        end
        def update
            users=User.find(params[:id])
            users.update(name: params[:name],email: params[:email], phone: params[:phone], password: params[:password])
            render json: users
        end
    
        def delete
            users.destroy(params[:id])
        end
end
