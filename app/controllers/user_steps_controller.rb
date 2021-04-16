class UserStepsController < ApplicationController
  include Wicked::Wizard

  before_action :set_true, only: [:personal,:show]
  steps :personal, :social

  def show
binding.pry
    if step == :social && @first == true

      redirect_to wizard_path(:personal)
    
      
    else
    render_wizard
    end
  end

  def personal
    session[:email] = params[:email]
    session[:first_name] = params[:first_name]
    session[:last_name] = params[:last_name]
    session[:age] = params[:age]
    session[:mob_no] = params[:mob_no]
    @first = false
    redirect_to wizard_path(:social)
    
  end

  def social

    session[:email] = params[:email]
    session[:city] = params[:city]
    session[:state] = params[:state]
    session[:country] = params[:country]
    session[:website] = params[:website]
    session[:skills] = params[:skills]
    session[:passion] = params[:passion]
    session[:description] = params[:description]
    redirect_to new_user_registration_path
  end

  def set_true
    @first = false
  end
end
