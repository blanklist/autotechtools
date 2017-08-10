class FormsController < ApplicationController

  def index
    @user = current_user
    @forms = Forms.all # where user is logged in
  end

  def new
    @form = Forms.new
  end

  def create

  end



end
