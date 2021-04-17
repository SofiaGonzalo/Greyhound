class CardsController < ApplicationController
    
    def new
    @card = Card.new
    end

    def create
        @card = Card.new
        if @card.save
            ActionCable.server.broadcast 'mail_channel', content: @card.content
        end
    end
end
