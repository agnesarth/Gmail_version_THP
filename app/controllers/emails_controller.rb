class EmailsController < ApplicationController
  require 'faker'
  def new
  end

  def create
    @email = Email.create(
      object: Faker::DcComics.title,
      body: Faker::Hipster.paragraph,
    )
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
