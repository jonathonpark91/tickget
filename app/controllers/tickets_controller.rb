class TicketsController < ApplicationController
	def index
		@tickets = Ticket.all
	end
end
	def new 
		@ticket = Ticket.new
	end

	def create 
		@ticket = Ticket.new(ticket_params)

	if @ticket.save
		@tickets = Ticket.all
		render action: 'index'
	else
		render action: 'new'

	end
end 

	def show
		@ticket = Ticket.find(params[:id])
	end


	def edit 
		@ticket = Ticket.find(params[:id]) 
	end 

	def update
			@ticket = Ticket.find(params[:id])

			if @ticket.update(ticket_params)
				redirect_to action: 'show'
				
			else
				render action: 'edit'
				
	end
end 

	def destroy
		@ticket = Ticket.find(params[:id])

		if @ticket.destroy
			redirect_to action: 'index'
		else 
			render action: 'show'

		end
	end	


private
	def ticket_params
		params.require(:ticket).permit(:concert_name, :date_time, :venue, :price, :quantity, :trade_value)
	end

