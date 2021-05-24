class ClientsController < ApplicationController

    def index
        @clients = Client.all 
    end 

    def show 
        @client = Client.find(params[:id])
    end 

    def destroy 
        @client = Client.find(params[:id])
        @client.memberships.destroy_all 
        @client.destroy 
        redirect_to clients_path 
    end 

    def new 
        @client = Client.new 
    end 

    def create 
        @client = Client.new(client_params)
        if @client.valid? 
            @client.save 
            redirect_to @client 
        else 
            flash[:errors].full_messages
            redirect_to new_client_path
        end 
    end 

    private 

    def client_params
        params.require(:client).permit(:name, :age)
    end 

end 