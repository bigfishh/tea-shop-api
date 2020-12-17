class UsersController < ApplicationController
    before_action :authorized, only: [:keep_logged_in]

    # REGISTER  
    def create
        user = User.create(user_params)
        if user.valid? 
            wristband = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(@user), token: wristband}
        else
            render json: {error: "Invalid email address or password"}
        end
    end

    # LOGGING IN
    def login 
        user = User.find_by(email_address: params[:email_address])
        if user && user.authenticate(params[:password])
            wristband = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), token: wristband}
        else 
            render json: {error: "Invalid email address or password"}
        end
    end

    def keep_logged_in 
        wristband = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: wristband}
    end

    def show 
        user = User.find(params[:id])
        wristband = encode_token({user_id: @user.id})
        render json: {
            user: UserSerializer.new(@user), 
            token: wristband
        }
    end

    def destroy 
        user = User.find(params[:id])
        user.destroy
        render json: {deleted_id: user.id, }
    end

    private 

    def user_params 
        params.permit(:first_name, :last_name, :password, :email_address)
    end

end
