class FormsController < ApplicationController

  def index
    @user = current_user
    @forms = Forms.all # where user is logged in
  end

  def new
    @form = Forms.new
  end

  def create
    @form = Forms.new(forms_params)
    if @form.save
      redirect_to forms_path
    else
      render 'new'
    end
  end

  def show
    @form = Forms.find(params[:id])
  end


  private
    def forms_params
      params.require(:forms).permit(:desc, :body, :user_id)
    end

end
