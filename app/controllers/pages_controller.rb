class PagesController < ApplicationController
  def home
    @home = "home"
  end

  def about
    @about = "About"
  end

  def contact
    @contact = "Contact"
  end

end
