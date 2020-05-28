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

  def destroy
  end
end
