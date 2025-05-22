class EventParticipantsController < ApplicationController
  before_action :authenticate_user!, only: [ :index, :create, :destroy ]
  def index
    @events = Event.where.not(creator: current_user).where(time: Time.current..)
  end

  def create
    @ep = EventParticipant.build(attending_user_id: params[:attending_user_id], attending_event_id: params[:attending_event_id])

    if @ep.save
      redirect_to attend_events_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
    @ep = EventParticipant.find(params[:id])

    if @ep.destroy
      redirect_to attend_events_path
    else
      render :index, status: :unprocessable_entity
    end
  end
end
