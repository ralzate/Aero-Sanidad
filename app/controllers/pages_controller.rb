class PagesController < ApplicationController
  skip_before_filter :require_login, only: [:home, :contact, :help]


  def home
  @q = params[:q]
  if @q
    @patients = Patient.where(:first_name => @q)
  else
    @patients = Patient.all
   end
end

  def contact
  end

  def help
  end
end