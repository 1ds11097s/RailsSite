class DataPagesController < ApplicationController
  before_action :set_data_page, only: [:show, :edit, :update, :destroy]

  # GET /data_pages
  # GET /data_pages.json
  def index
    @data_pages = DataPage.page params[:id]
  end

  # GET /data_pages/1
  # GET /data_pages/1.json
  def show
  end

  # GET /data_pages/new
  def new
    @data_page = DataPage.new
  end

  # GET /data_pages/1/edit
  def edit
  end

  # POST /data_pages
  # POST /data_pages.json
  def create
    @data_page = DataPage.new(data_page_params)

    respond_to do |format|
      if @data_page.save
        format.html { redirect_to @data_page, notice: 'Data page was successfully created.' }
        format.json { render :show, status: :created, location: @data_page }
      else
        format.html { render :new }
        format.json { render json: @data_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_pages/1
  # PATCH/PUT /data_pages/1.json
  def update
    respond_to do |format|
      if @data_page.update(data_page_params)
        format.html { redirect_to @data_page, notice: 'Data page was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_page }
      else
        format.html { render :edit }
        format.json { render json: @data_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_pages/1
  # DELETE /data_pages/1.json
  def destroy
    @data_page.destroy
    respond_to do |format|
      format.html { redirect_to data_pages_url, notice: 'Data page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_page
      @data_page = DataPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_page_params
      params.require(:data_page).permit(:data)
    end
end
