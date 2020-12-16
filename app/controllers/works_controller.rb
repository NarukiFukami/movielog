class WorksController < ApplicationController
  before_action :set_work, only: [:edit, :update, :destroy, :show]
    def index
      @work = Work.all
    end

    def show
    end

    def new
      @work = Work.new
    end

    def create
      @work = Work.new(work_params)

      if @work.save
        redirect_to works_path
      else
        render "new"
      end
    end

    def edit
    end

    def update
    end

    def destroy
      @works.destroy
      redirect_to works_path
    end

    private
    def set_work
      @work = Work.find(params[:id])
    end

end
