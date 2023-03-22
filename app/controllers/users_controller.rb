class UsersController < ApplicationController

    def show
        # byebug
        user = User.find_by(id: params[:id])
        render json: user, include: :items
    end

end
