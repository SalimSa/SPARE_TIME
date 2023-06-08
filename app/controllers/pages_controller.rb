class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @themes = Theme.all.sample(3)

    @topics = Topic.all.sample(5)

  end

  def profile


  end

end
