class GymsController < ApplicationController

    def index
        @gyms = Gym.all 
    end 

    def show 
        @gym = Gym.find(params[:id])
    end 

    def destroy 
        @gym = Gym.find(params[:id])
        @gym.destroy 
        redirect_to gyms_path 
    end 

    def new 
        @gym = Gym.new 
    end 

    def create 
        @gym = Gym.create(gym_params)
        redirect_to @gym 
    end 

    private 

    def gym_params
        params.require(:gym).permit(:name, :address)
    end 

end 