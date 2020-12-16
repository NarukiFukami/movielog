class DirectorsController < ApplicationController

  before_action :set_director, only: [:edit, :update, :destroy, :show]
    def index
      @director = Director.all
    end

    def show
      @director = Director.find(params[:id])
    end

    def new
      @director = Director.all
    end

    def create
    end

    def edit
      @director = Director.find(params[:id])
    end

    def update
      @director = Director.find(params[:id])
    end

    def destroy
      @director = Director.find(params[:id])
      @Director.destroy
    end

    private
    def set_director
      @director = Director.find(params[:id])
    end

end
