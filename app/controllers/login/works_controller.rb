class Login::WorksController < Login::ApplicationController
  before_action :set_work, only: [:edit, :update, :destroy,]
  # def index
  #   # @works = Work.all.by_new.page(params[:page]).per(4)
  #   @q = Work.all.by_position.ransack(params[:q])
  #   @works = @q.result(distinct: true).page(params[:page]).per(8)
  # end

  # def show
  # end

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

  # def move_higher
  #   Work.find(params[:id]).move_higher
  #   redirect_to :action => 'index'
  # end

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
      tag_ids: []
    )
  end

end
