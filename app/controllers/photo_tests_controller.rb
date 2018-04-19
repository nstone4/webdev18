class PhotoTestsController < ApplicationController
  before_action :set_photo_test, only: [:show, :edit, :update, :destroy]

  # GET /photo_tests
  # GET /photo_tests.json
  def index
    @photo_tests = PhotoTest.all
  end

  # GET /photo_tests/1
  # GET /photo_tests/1.json
  def show
  end

  # GET /photo_tests/new
  def new
    @photo_test = PhotoTest.new
  end

  # GET /photo_tests/1/edit
  def edit
  end

  # POST /photo_tests
  # POST /photo_tests.json
  def create
    @photo_test = PhotoTest.new(photo_test_params)

    respond_to do |format|
      if @photo_test.save
        format.html { redirect_to @photo_test, notice: 'Photo test was successfully created.' }
        format.json { render :show, status: :created, location: @photo_test }
      else
        format.html { render :new }
        format.json { render json: @photo_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_tests/1
  # PATCH/PUT /photo_tests/1.json
  def update
    respond_to do |format|
      if @photo_test.update(photo_test_params)
        format.html { redirect_to @photo_test, notice: 'Photo test was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo_test }
      else
        format.html { render :edit }
        format.json { render json: @photo_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_tests/1
  # DELETE /photo_tests/1.json
  def destroy
    @photo_test.destroy
    respond_to do |format|
      format.html { redirect_to photo_tests_url, notice: 'Photo test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_test
      @photo_test = PhotoTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_test_params
      params.require(:photo_test).permit(:photo_id, :filename, :user_id, :time, :caption)
    end
end
