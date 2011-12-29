class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def news
    @title = "News"
  end

  def event
    @title = "Event"
  end

  def enquiry
    @title = "Enquiry"
  end

  def service
    @title = "Service"
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end

end
