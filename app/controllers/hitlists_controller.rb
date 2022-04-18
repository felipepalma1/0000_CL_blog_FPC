class HitlistsController < ApplicationController
  before_action :set_hitlist, only: %i[ show edit update destroy ]

  # GET /hitlists or /hitlists.json
  def index
    @hitlists = Hitlist.all
  end

  # GET /hitlists/1 or /hitlists/1.json
  def show
  end

  # GET /hitlists/new
  def new
    @hitlist = Hitlist.new
  end

  # GET /hitlists/1/edit
  def edit
  end

  # POST /hitlists or /hitlists.json
  def create
    @hitlist = Hitlist.new(hitlist_params)

    respond_to do |format|
      if @hitlist.save
        format.html { redirect_to hitlist_url(@hitlist), notice: "Hitlist was successfully created." }
        format.json { render :show, status: :created, location: @hitlist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hitlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hitlists/1 or /hitlists/1.json
  def update
    respond_to do |format|
      if @hitlist.update(hitlist_params)
        format.html { redirect_to hitlist_url(@hitlist), notice: "Hitlist was successfully updated." }
        format.json { render :show, status: :ok, location: @hitlist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hitlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hitlists/1 or /hitlists/1.json
  def destroy
    @hitlist.destroy

    respond_to do |format|
      format.html { redirect_to hitlists_url, notice: "Hitlist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hitlist
      @hitlist = Hitlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hitlist_params
      params.require(:hitlist).permit(:primer_nombre, :primer_apellido, :email, :phone, :twitter)
    end
end
