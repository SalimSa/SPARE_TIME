class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if params[:query].nil? || params[:query] == ''
      @themes = Theme.all
    else
      @themes = Theme.search_by_title_and_description(params[:query])
    end
    # @themes = Theme.all
    @topics = Topic.all

  end

  def profile


  end

end
