class EventsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]
  def index
    @past_events = Event.past
    @upcoming_events = Event.upcoming
  end

  def new
    @event = Event.new
  end

  def create
    @new_event = current_user.created_events.build(allowed_event_params)

    if current_user.attended_events << @new_event
      redirect_to user_path(current_user.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def allowed_event_params
    params.expect(event: [ :location, :time ])
  end
end
