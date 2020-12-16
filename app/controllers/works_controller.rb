class WorksController < ApplicationController
  before_action :set_work, only: [:edit, :update, :destroy, :show]
  def index
    @works = Work.all.by_new
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
    if @work.update(work_params)
      redirect_to work_path(@work)
    else
      render 'edit'
    end
  end

  def destroy
    @work.destroy
    redirect_to works_path
  end

  private
  def set_work
    @work = Work.find(params[:id])
  end

  def work_params
    params[:work].permit(
      :title,
      :release,
      :cast,
      :description,
    )
  end

end
