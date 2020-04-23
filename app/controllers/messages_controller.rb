class MessagesController < ApplicationController
	def create
		 @message = Message.create(message_params)
		 if @message.save
			 flash[:success] = "Thanks for your message, our team will get back to you in no time."
			 redirect_back(fallback_location: root_path)
		else
			flash[:danger] = "You message could not be submited please make sure to solve the following issues: #{@message.errors.full_messages.join(", ")}"
			redirect_back(fallback_location: root_path)
		end
	end 

  private

    def message_params
      params.require(:message).permit(:name, :email, :message)
    end
end
