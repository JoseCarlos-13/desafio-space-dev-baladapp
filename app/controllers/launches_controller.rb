class LaunchesController < ApplicationController
  before_action :launch, only: %i[update destroy show]

  def index
    launches = Launch.all

    render json: launches, status: :ok
  end

  def update
    launch.update!(launch_params)

    head :no_content
  end

  def destroy
    launch.destroy!

    head :no_content
  end

  def show
    render json: launch, status: :ok
  end

  private

  def launch_params
    params.require(:launch).permit(:url, :slug, :name, :status, :net,
                                   :window_end, :window_start, :inhold,
                                   :tbdtime, :tbddate, :probability,
                                   :holdreason, :failreason, :hashtag,
                                   :mission, :webcast_live, :infographic,
                                   :program)
  end

  def launch
    Launch.find(params[:id])
  end
end
