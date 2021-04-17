class HomeController < ApplicationController
  def index
    @card = Card.new

  end

  def prueba
    @card = Card.new
  end

  def about
    @card = Card.new
    @videos = Video.order('created_at DESC')

  end
  def new
    @card = Card.new
    @video = Video.new

  end



  def create
    @message = Message.new
    @video = Video.new(video_params)

    if @video.save

      flash[:success] = 'Video added!'

      redirect_to root_url

    else

      render :new      

    end

end



private



def video_params

  params.require(:video).permit(:link)

end

end