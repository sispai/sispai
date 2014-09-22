class PoolAccessesController < ApplicationController
  before_action :set_pool_access, only: [:show, :edit, :update, :destroy]

  # GET /pool_accesses
  # GET /pool_accesses.json
  def index
    @pool_accesses = PoolAccess.all
  end

  # GET /pool_accesses/1
  # GET /pool_accesses/1.json
  def show
  end

  # GET /pool_accesses/new
  def new
    @pool_access = PoolAccess.new
  end

  # GET /pool_accesses/1/edit
  def edit
  end

  # POST /pool_accesses
  # POST /pool_accesses.json
  def create
    @pool_access = PoolAccess.new(pool_access_params)

    respond_to do |format|
      if @pool_access.save
        format.html { redirect_to @pool_access, notice: 'Pool access was successfully created.' }
        format.json { render :show, status: :created, location: @pool_access }
      else
        format.html { render :new }
        format.json { render json: @pool_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pool_accesses/1
  # PATCH/PUT /pool_accesses/1.json
  def update
    respond_to do |format|
      if @pool_access.update(pool_access_params)
        format.html { redirect_to @pool_access, notice: 'Pool access was successfully updated.' }
        format.json { render :show, status: :ok, location: @pool_access }
      else
        format.html { render :edit }
        format.json { render json: @pool_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pool_accesses/1
  # DELETE /pool_accesses/1.json
  def destroy
    @pool_access.destroy
    respond_to do |format|
      format.html { redirect_to pool_accesses_url, notice: 'Pool access was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pool_access
      @pool_access = PoolAccess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pool_access_params
      params.require(:pool_access).permit(:is_opening, :emergency, :timestamp, :user_id, :pool_id)
    end
end
