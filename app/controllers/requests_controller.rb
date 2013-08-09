class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
    if params[:tag]
      @requests = Request.tagged_with(params[:tag])
    else
      @requests = Request.all
      @requests = Request.order("request_date ASC")
    end
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
  end

  # GET /requests/new
  def new
    @request = Request.new
    @customers = Customer.all
    @suppliers = Supplier.all
    @designers = Designer.all
    @statuses = Status.all
  end

  # GET /requests/1/edit
  def edit
    @customers = Customer.all
    @suppliers = Supplier.all
    @designers = Designer.all
    @statuses = Status.all
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)
    @customers = Customer.all
    @suppliers = Supplier.all
    @designers = Designer.all
    @statuses = Status.all

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render action: 'show', status: :created, location: @request }
      else
        format.html { render action: 'new' }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update

    @customers = Customer.all
    @suppliers = Supplier.all
    @designers = Designer.all
    @statuses = Status.all

    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url }
      format.json { head :no_content }
    end
  end

  def tagged
    if params[:tags].present? 
      @requests = Request.tagged_with(params[:tags])
    else 
      @requests = Request.postall
    end  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:request_date, :request_smd_number, :request_brief_description, :request_description, :request_supplier, :request_colours, :request_date_required, :request_required_for, :request_designer, :request_comments, :request_confirmed_comp_date, :request_received, :request_received_date, :request_date_sent, :request_tracking_number, :request_confirmed_comp_date, :request_confirmed_comp_date2, :request_confirmed_comp_date3, :request_confirmed_comp_date4, :request_confirmed_comp_date5, :request_confirmed_comp_date6, :tag_list, :tags, :supplier, :customer, :designer, :name, :sample_image)
    end

end
