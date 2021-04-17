class MessagesController < ApplicationController
    skip_before_action :verify_authenticity_token  
    def new
        @message = Message.new
    end

    def create
        @message = Message.create(msg_params)
        if @message.save
            ActionCable.server.broadcast 'chat_channel', content:@message.content
        end
    end


    private

    def msg_params
        params.require(:message).permit(:content)
    end
end
