class TutorialsController < ApplicationController
  before_action :set_project
  before_action :set_tutorial, except: [:create]


  # GET /tutorials
  # GET /tutorials.json
  def index
    @tutorials = Tutorial.all
  end

  # GET /tutorials/1
  # GET /tutorials/1.json
  def show
  end

  # GET /tutorials/new
  def new
    @tutorial = Tutorial.new
  end

  # GET /tutorials/1/edit
  def edit
  end

  # POST /tutorials
  # POST /tutorials.json
  def create
    @tutorial = @project.tutorials.create(tutorial_params)
    redirect_to @project

    # respond_to do |format|
    #   if @tutorial.save
    #     format.html { redirect_to @tutorial, notice: 'Tutorial was successfully created.' }
    #     format.json { render :show, status: :created, location: @tutorial }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @tutorial.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /tutorials/1
  # PATCH/PUT /tutorials/1.json
  def update
    respond_to do |format|
      if @tutorial.update(tutorial_params)
        format.html { redirect_to @tutorial, notice: 'Tutorial was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutorial }
      else
        format.html { render :edit }
        format.json { render json: @tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorials/1
  # DELETE /tutorials/1.json
  def destroy
    if @tutorial.destroy
      flash[:success] = "Cuzz u wuz sho"
    else
      flash[:error] = "Cuz u wuznt sho"
    end
    redirect_to @project
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutorial
      @tutorial = @project.tutorials.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutorial_params
      params[:tutorial].permit(:name, :description, :step, :picture)
    end
end
