class TicketsController < ApplicationController
	def index
		@tickets = Ticket.all
	end

	def new 
		@ticket = Ticket.new
	end

	def create 
		@ticket = Ticket.new(ticket_params)
	end
end

private
	def store_params
		params.require(:ticket).permit(:concert_name)
	end
