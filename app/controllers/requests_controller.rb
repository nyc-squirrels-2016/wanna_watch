class RequestsController < ApplicationController
	def index
		if logged_in?
			@requests = current_user.requests_recieved
		end
	end

	def create
		event = Event.find(params[:event_id])
		request = event.requests.new()
		if logged_in?
			request.guest_id = current_user.id
			request.save
			redirect_to event
		else
			redirect_to login_path
		end
	end


	def update
		request = Request.find(params[:id])
		if logged_in?
			if current_user == request.host
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
		if logged_in?
			if current_user == request.host
				request.destroy
				redirect_to requests_path
			else
				redirect_to login_path
			end
		else
			redirect_to login_path
		end
	end
end