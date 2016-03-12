class RequestsController < ApplicationController
	def index
		if logged_in?
			@requests = current_user.requests_recieved
		end
	end

	def outings
		if logged_in?
			@requests = current_user.requests
		end
	end

	def create
		event = Event.find(params[:request][:event_id])
		request = event.requests.new()
		if logged_in?
			if event.has_no_user_requests(current_user.id)
				request.guest_id = current_user.id
				request.save
				redirect_to event
			else
				redirect_to event
			end
		else
			redirect_to root_path
		end
	end


	def update
		request = Request.find(params[:id])
		if logged_in?
			if current_user == request.host
				request.update(request_params)
				redirect_to requests_path
			else
				redirect_to root_path
			end
		else
			redirect_to root_path
		end
	end

	private
	def request_params 
		params.require(:request).permit(:active)
	end
end