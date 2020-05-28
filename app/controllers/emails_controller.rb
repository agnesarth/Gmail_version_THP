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
    @email = Email.find(params[:id])
    @email.update(read: !@email.read)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
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
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  private

  def email_params
    params.permit(:object, :body, :read)
  end
end
