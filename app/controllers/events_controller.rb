class EventsController < ApplicationController

  before_action :set_event, only: [:edit, :update, :destroy]
  # skip_before_action :authenticate_user!, only: [:index]

  def index

    #  @events = policy_scope(event)# can delete the word all because you're calling twice (event_police + here)
    # if params[:query].present?
    #   # @events = event.search_by_name_and_description(params[:query])
    #   @events = policy_scope(event.search_by_name_and_description(params[:query]))
    # else
    @events = Event.all
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user

    if @event.save
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # authorize @event
  end

  def update
    # authorize @event
    if @event.update(event_params)
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    #authorize @event
    @event.destroy
    redirect_to events_path, status: :see_other
  end


  private
  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :start_date, :end_date, :notes)
  end
end
