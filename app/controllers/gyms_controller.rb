class GymsController < ApplicationController

    def index
        @gyms = Gym.all 
    end 

    def show 
        @gym = Gym.find(params[:id])
    end 

    def destroy 
        @gym = Gym.find(params[:id])
        @gym.memberships.destroy_all 
        @gym.destroy 
        redirect_to gyms_path 
    end 

    def new 
        @gym = Gym.new 
    end 

    def create 
        @gym = Gym.new(gym_params)
        if @gym.valid? 
            @gym.save 
            redirect_to @gym
        else 
            flash[:errors] = @gym.errors.full_messages
            redirect_to new_gym_path 
        end 
    end 

    private 

    def gym_params
        params.require(:gym).permit(:name, :address)
    end 

end 