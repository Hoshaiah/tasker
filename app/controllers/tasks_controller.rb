class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]
  before_action :set_category, only: %i[ show edit new update create destroy index]
  # GET /tasks or /tasks.json
  def index
    @tasks = Task.where category_id:@category.id
  end

  # GET /tasks/1 or /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks or /tasks.json
  def create
    @task = @category.tasks.build(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to category_tasks_url(params[:category_id]), notice: "Task was successfully created." }
        # format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1 or /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to category_tasks_url(params[:category_id]), notice: "Task was successfully updated." }
        # format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        # format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    @task.destroy

    respond_to do |format|
      format.html { redirect_to category_tasks_url, notice: "Task was successfully destroyed." }
      # format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    def set_category
      @category = Category.find_by id:params[:category_id]
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:title, :notes, :date, :completed, :category_id)
    end

  end