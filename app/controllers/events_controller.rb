class EventsController < ApplicationController
  def index
    @events = Event.find_each
  end
end
