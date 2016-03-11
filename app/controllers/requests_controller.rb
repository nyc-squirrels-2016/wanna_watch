class RequestsController < ApplicationController
	def index
		current_user = User.find(1)
		@requests = current_user.requests_recieved
	end

	def create
		event = Event.find(params[:event_id])
		request = event.requests.new()
		if session[:user_id]
			request.guest_id = session[:user_id]
			request.save
			redirect_to event
		else
			redirect_to login_path
		end
	end


	def update
		request = Request.find(params[:id])
		if session[:user_id]
			current_user = User.find(session[:user_id])
			if current_user = request.host
				request.update(active: 0)
				redirect_to requests_path
			else
				redirect_to login_path
			end
		else
			redirect_to login_path
		end
	end

	def destroy
		request = Request.find(params[:id])
		if session[:user_id]
			current_user = User.find(session[:user_id])
			if current_user = request.host
				request.destroy
				redirect_to request.event
			else
				redirect_to login_path
			end
		else
			redirect_to login_path
		end
	end
end