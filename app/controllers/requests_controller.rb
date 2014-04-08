class RequestsController < ApplicationController
	before_action :load_list
 
	def create
		@request = @list.requests.new(request_params)
		if @request.save
			redirect_to @list, notice: 'Thanks for your request'
		else
			redirect_to @list, alert: 'Unable to add request'
		end
	end
	 
	def destroy
		@request = @list.requests.find(params[:id])
		@request.destroy
		redirect_to @list, notice: 'Request Deleted'
	end
	 
	private
		def load_list
			@list = List.find(params[:list_id])
		end
		 
		def request_params
			params.require(:request).permit(:name, :email, :body)
		end
end
