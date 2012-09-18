require 'hyperion/api'

class PeopleController < ApplicationController
  def index
    @people = Hyperion::API.find_by_kind(:people)
  end

  def show
    @person = Hyperion::API.find_by_key(params[:key])
  end

  def new
  end

  def edit
    @person = Hyperion::API.find_by_key(params[:key])
  end

  def create
    @person = Hyperion::API.save(params[:person].merge(kind: :people, created_at: Time.now, updated_at: Time.now))
    redirect_to show_person_path(@person[:key])
  end

  def update
    @person = Hyperion::API.find_by_key(params[:key])
    Hyperion::API.save(@person.merge(params[:person].merge(updated_at: Time.now)))
    redirect_to show_person_path(@person[:key])
  end

  def destroy
    @person = Hyperion::API.save(params[:person])
    redirect_to people_path
  end
end
