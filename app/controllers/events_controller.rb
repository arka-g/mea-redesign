class EventsController < ApplicationController
  before_action :authorized_user, only: [:create, :edit, :update, :destroy]

  def index
    @events = Event.last(4).reverse
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to events_path, notice: 'Event was successfully created.' }
        format.json { render :index, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @event = Event.find(params[:id])
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to show_events_path, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def show_events
    @events = Event.all
  end

  def edit
    @event = Event.find(params[:id])
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private

  def authorized_user
    user_signed_in?
  end

  def event_params
    params.require(:event).permit(:name, :description, :date, :location, :facebook_link, :start_time, :end_time)
  end

end
