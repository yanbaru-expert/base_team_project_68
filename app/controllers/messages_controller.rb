class MessagesController < ApplicationController

  # newアクション
  def new
    @message = Message.new
  end

  # createアクション
  def create
    Message.create(message_params)
  end

  private

  def message_params
    params.require(:message).permit(:title, :contents)
  end
end
