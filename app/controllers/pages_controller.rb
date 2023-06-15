class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @themes = Theme.where(favorite: true).order(:title)
    # raise
    # @task = TaskComponent.all
    # @tasks = TaskComponent.find_by(item: )
    # raise
    # @themes.each do |theme|
    #   @tasks = theme.task_components
    #   @total_number = @tasks.count
    #   @incomplete_number = @tasks.where(completed: false).count
    # end

    @events = CalendarComponent.all
    @all_events = []
    @themes.each do |theme|
      @all_events += theme.calendar_components
    end
  end

  def profile

  end

end
