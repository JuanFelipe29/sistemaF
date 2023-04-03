class PieceNamesController < ApplicationController
  before_action :set_piece_name, only: %i[ show edit update destroy ]

  # GET /piece_names or /piece_names.json
  def index
    @piece_names = PieceName.all
  end

  # GET /piece_names/1 or /piece_names/1.json
  def show
  end

  # GET /piece_names/new
  def new
    @piece_name = PieceName.new
  end

  # GET /piece_names/1/edit
  def edit
  end

  # POST /piece_names or /piece_names.json
  def create
    @piece_name = PieceName.new(piece_name_params)

    respond_to do |format|
      if @piece_name.save
        format.html { redirect_to piece_name_url(@piece_name), notice: "Piece name was successfully created." }
        format.json { render :show, status: :created, location: @piece_name }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @piece_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece_names/1 or /piece_names/1.json
  def update
    respond_to do |format|
      if @piece_name.update(piece_name_params)
        format.html { redirect_to piece_name_url(@piece_name), notice: "Piece name was successfully updated." }
        format.json { render :show, status: :ok, location: @piece_name }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @piece_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece_names/1 or /piece_names/1.json
  def destroy
    @piece_name.destroy

    respond_to do |format|
      format.html { redirect_to piece_names_url, notice: "Piece name was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece_name
      @piece_name = PieceName.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def piece_name_params
      params.require(:piece_name).permit(:family_id, :name)
    end
end
