class EmailsController < ApplicationController
  require 'faker'
  def new
    
  end

  def create
    @email = Email.create(
      object: Faker::DcComics.title,
      body: Faker::Hipster.paragraph,
    )
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def edit
  end

  def update
  end

  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html { redirect_to email_path(@email) }
      format.js { }
    end
  end

  def destroy
  end

  private

  def email_params
    params.require(:emails).permit(:object, :body)
  end
end
