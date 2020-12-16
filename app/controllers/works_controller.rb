class WorksController < ApplicationController
  before_action :set_work, only: [:edit, :update, :destroy, :show]
    def index
      @work = Work.all
    end

    def show
      @work = Work.find(params[:id])
    end

    def new
      @work = Work.all
    end

    def create
    end

    def edit
      @work = Work.find(params[:id])
    end

    def update
      @work = Work.find(params[:id])
    end

    def destroy
      @work = Work.find(params[:id])
      @works.destroy
    end

    private
    def set_work
      @work = Work.find(params[:id])
    end

end
