class MembershipsController < ApplicationController
    
    def index 
        @memberships = Membership.all 
    end 

    def show 
        @membership = Membership.find(params[:id])
        @client = @membership.client 
        @gym = @membership.gym 
    end 

    def new 
        @membership = Membership.new
        @clients = Client.all 
        @gyms = Gym.all 
    end 

    def create 
        @membership = Membership.new(membership_params)
        if @membership.valid? 
            @membership.save 
            redirect_to @membership
        else 
            flash[:errors] = @membership.errors.full_messages
            redirect_to new_membership_path 
        end 
    end 

    private 

    def membership_params
        params.require(:membership).permit(:client_id, :membership_charge, :gym_id)
    end 

end 