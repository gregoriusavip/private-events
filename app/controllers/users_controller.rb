class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @events = User.find(params[:id]).created_events
  end
end
