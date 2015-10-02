class ClinicHistoriesController < ApplicationController
  before_action :set_clinic_history, only: [:show, :edit, :update, :destroy]

  # GET /clinic_histories
  # GET /clinic_histories.json
  def index
    @clinic_histories = ClinicHistory.all
  end

  # GET /clinic_histories/1
  # GET /clinic_histories/1.json
  def show
  end

  # GET /clinic_histories/new
  def new
    @clinic_history = ClinicHistory.new
  end

  # GET /clinic_histories/1/edit
  def edit
  end

  # POST /clinic_histories
  # POST /clinic_histories.json
  def create
    @clinic_history = ClinicHistory.new(clinic_history_params)

    respond_to do |format|
      if @clinic_history.save
        format.html { redirect_to @clinic_history, notice: 'Clinic history was successfully created.' }
        format.json { render :show, status: :created, location: @clinic_history }
      else
        format.html { render :new }
        format.json { render json: @clinic_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinic_histories/1
  # PATCH/PUT /clinic_histories/1.json
  def update
    respond_to do |format|
      if @clinic_history.update(clinic_history_params)
        format.html { redirect_to @clinic_history, notice: 'Clinic history was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinic_history }
      else
        format.html { render :edit }
        format.json { render json: @clinic_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinic_histories/1
  # DELETE /clinic_histories/1.json
  def destroy
    @clinic_history.destroy
    respond_to do |format|
      format.html { redirect_to clinic_histories_url, notice: 'Clinic history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_history
      @clinic_history = ClinicHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinic_history_params
      params.require(:clinic_history).permit(:city, :department, :user_id, :cove, :mobiel_service, :airport, :type_service, :patient_id, :origin, :destination, :company, :accompanist_name, :relationship, :phone, :reason_for_consultation, :current_illness)
    end
end
