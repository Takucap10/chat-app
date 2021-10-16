class MessagesController < ApplicationController
 
  def index
    @message = Message.new
    @room = Room.find(params[:room_id])
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_message_path(@room)
    end 
      render :index
  end

 private
  def message_params
    params.require(:message).permit(:content).merge(use_id: current_user.id)
  end


end
