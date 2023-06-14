class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @themes = Theme.where(favorite: true).order(:title)
    @events = CalendarComponent.all

  end

  def profile

  end

end
