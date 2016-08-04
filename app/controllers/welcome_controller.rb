class WelcomeController < ApplicationController
  def index
  	@properties = Property.all
  	@properties = Property.order(:name).page params[:page]

  	@contact = Contact.new
  end
end
