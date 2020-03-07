class MessagesController < ApplicationController
	def create
		 @message = Message.create(message_params)
		 flash[:success] = "Thanks for your request, our team will get back to you in no time"
		 redirect_back(fallback_location: root_path)
	end 

  private

    def message_params
      params.require(:message).permit(:name, :email, :message)
    end
end
