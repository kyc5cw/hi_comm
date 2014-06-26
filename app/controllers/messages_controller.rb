class MessagesController < ApplicationController
	def new
		@message = current_user.messages.new
	end

	def create
		@recipient = User.find(params[:user])
		current_user.send_message(@recipient, params[:body], params[:subject])
		flash[:notice] = "Message sent!"
		redirect_to :conversations
	end
end
