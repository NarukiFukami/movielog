class WorksController < ApplicationController
  before_action :set_work, only: [:edit, :update, :destroy, :show]
  def index
    # @works = Work.all.by_new.page(params[:page]).per(4)
    @q = Work.ransack(params[:q])
    @works = @q.result(distinct: true).page(params[:page]).per(8)
  end

  def show
  end

  def new
    @work = Work.new

    @work.director_id = params[:director_id] if params[:director_id]
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
      :director_id,
      :image,
      :remove_image,
      :image_cache,
    )
  end

end
