class DirectorsController < ApplicationController
  before_action :set_director, only: [:edit, :update, :destroy, :show]
  def index
    @directors = Director.all.by_new
  end

  def show
    # @director = Director.find(params[:id])
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)

    if @director.save
      redirect_to directors_path
    else
      render "new"
    end
  end

  def edit
    # @director = Director.find(params[:id])
  end

  def update
    # @director = Director.find(params[:id])
    if @director.update(director_params)
      redirect_to director_path(@director)
    else
      render 'edit'
    end
  end

  def destroy
    # @director = Director.find(params[:id])
    @director.destroy
    redirect_to directors_path, notice: "Deleted"
  end

  private

  def director_params
    params[:director].permit(
      :name,
      :country,
    )
  end

  def set_director
    @director = Director.find(params[:id])
  end

end
