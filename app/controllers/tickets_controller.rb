class TicketsController < ApplicationController
	def index
		@tickets = Ticket.all
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

	private
	def ticket_params
		params.require(:ticket).permit(:concert_name, :date_time, :venue, :price, :quantity, :trade_value)
	end
end


