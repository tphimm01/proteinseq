class SamplesController < ApplicationController
  before_action :set_sample, only: [:show, :edit, :update, :destroy]

  # GET /samples
  def index
    @samples = Sample.all
  end

  # GET /samples/1
  def show
  end

  # GET /samples/new
  def new
    @sample = Sample.new
    @preparation_options = ["(select one)","PVDF Blot","Liquid","Digestion"]
    @label_options = ["(select one)","NONE","32P","35S","14C","3H"]
  end

  # GET /samples/1/edit
  def edit
  end

  # POST /samples
  def create
    @sample = Sample.new(sample_params)

    if @sample.save
      redirect_to @sample, notice: 'Sample was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /samples/1
  def update
    if @sample.update(sample_params)
      redirect_to @sample, notice: 'Sample was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /samples/1
  def destroy
    @sample.destroy
    redirect_to samples_url, notice: 'Sample was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample
      @sample = Sample.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sample_params
      params.require(:sample).permit(:order_id, :name, :weight, :estimated_amount, :how_estimated, :preparation, :blot, :pieces, :buffer, :volume, :concentration, :enzyme, :label, :amount, :special_instructions)
    end
end
