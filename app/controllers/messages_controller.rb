class MessagesController < ApplicationController

  # indexアクション
  def index
    @messages = Message.all
  end

  # newアクション
  def new
    @message = Message.new
  end

  # createアクション
  def create
    Message.create(message_params)
  end

  # showアクション
  def show
    @message = Message.find(params[:id])
  end

  # editアクション
  def edit
    @message = Message.find(params[:id])
  end

  # updateアクション
  def update
    message = Message.find(params[:id])
    message.update(message_params)
  end

  private

  def message_params
    params.require(:message).permit(:title, :contents)
  end
end
