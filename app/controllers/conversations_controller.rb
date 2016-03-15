class ConversationsController < ApplicationController
	def create 
		@conversation = Conversation.create_with(conversation_params).find_or_create_by(sender_id: params[:conversation][:sender_id], reciever_id: params[:conversation][:reciever_id])
		redirect_to @conversation
	end

	def show
		@conversation = Conversation.find(params[:id])
	end

	def conversation_params
		params.require(:conversation).permit(:sender_id, :reciver_id)
	end
end