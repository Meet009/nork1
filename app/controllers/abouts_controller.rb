class AboutsController < ApplicationController
  before_action :set_about, only: %i[ show edit update destroy ]
  allow_unauthenticated_access only: :index

  # GET /abouts or /abouts.json
  def index
    @abouts = About.all
  end

  # GET /abouts/1 or /abouts/1.json
  def show
  end

  # GET /abouts/new
  def new
    @about = About.new
    @about.experiences.build
    @about.skills.build
  end

  # GET /abouts/1/edit
  def edit
  end

  # POST /abouts or /abouts.json
  def create
    @about = About.new(about_params)
    @about.user = current_user

    respond_to do |format|
      if @about.save
        format.html { redirect_to @about, notice: "About was successfully created." }
        format.json { render :show, status: :created, location: @about }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abouts/1 or /abouts/1.json
  def update
    respond_to do |format|
      if @about.update(about_params)
        format.html { redirect_to @about, notice: "About was successfully updated." }
        format.json { render :show, status: :ok, location: @about }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abouts/1 or /abouts/1.json
  def destroy
    @about.destroy!

    respond_to do |format|
      format.html { redirect_to abouts_path, status: :see_other, notice: "About was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about
      @about = About.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def about_params
      params.require(:about).permit(:name, :info, 
        skills_attributes:[ :skill_name ], 
        experiences_attributes:[ :comp_name, :start_date, :end_date ], 
        projects_attributes:[ :heading, :project_info, :links],
        comments_attributes:[ :content ],
        awards_attributes:[ :award_name ],
        certficates_attributes:[ :cert_name ]
      )
    end
end
