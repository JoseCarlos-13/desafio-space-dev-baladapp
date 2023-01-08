class HomeController < ApplicationController
  def welcome_message
    message = "REST Back-end Challenge 20201209 Running"

    render json: message, status: :ok
  end
end
