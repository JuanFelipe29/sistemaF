class QuarteringsController < ApplicationController
  def index
    @channels = Channel.all
    @pieces = Piece.all
  end

    
    def show
    end
  
    
    def new
      @piece = Piece.new
    end
  
    
    def edit
    end
  
    
    def create
      @piece = Piece.new(piece_params)
  
      respond_to do |format|
        if @piece.save
          format.html { redirect_to piece_url(@piece), notice: "Piece was successfully created." }
          format.json { render :show, status: :created, location: @piece }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @piece.errors, status: :unprocessable_entity }
        end
      end
    end
  
    
    def update
      respond_to do |format|
        if @piece.update(piece_params)
          format.html { redirect_to piece_url(@piece), notice: "Piece was successfully updated." }
          format.json { render :show, status: :ok, location: @piece }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @piece.errors, status: :unprocessable_entity }
        end
      end
    end
  
    
    def destroy
      @piece.destroy
  
      respond_to do |format|
        format.html { redirect_to pieces_url, notice: "Piece was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_piece
        @piece = Piece.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def piece_params
        params.require(:piece).permit(:channel_id, :piece_name_id, :lot, :weight, :start_date_maturation, :end_date_of_maturation, :matured, :available, :user_id)
      end
end
