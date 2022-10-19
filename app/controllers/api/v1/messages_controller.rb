class Api::V1::MessagesController < ApplicationController
  def index
    message = Message.all.sample.greeting
    render json: { status: 'SUCCESS', message: 'Messages Loaded', greeting: message }, status: :ok
  end
end
