class Api::SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all
    render 'index.json.jbuilder'
  end

  def show
    @speaker = Speaker.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @speaker = Speaker.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      gender: params[:gender],
      age: params[:age]
    )
    if @speaker.save #happy path
      render 'show.json.jbuilder'
    else #sad path
      render json: {errors: @speaker.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @speaker = Speaker.find(params[:id])

    @speaker.first_name = params[:first_name] || @speaker.first_name
    @speaker.last_name = params[:last_name] || @speaker.last_name
    @speaker.email = params[:email] || @speaker.email
    @speaker.gender = params[:gender] || @speaker.gender
    @speaker.age = params[:age] || @speaker.age

    if @speaker.save #happy path
      render 'show.json.jbuilder'
    else #sad path
      render json: {errors: @speaker.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @speaker = Speaker.find(params[:id])
    @speaker.destroy
    render json: {message: "Speaker successfully destroyed"}
  end
end